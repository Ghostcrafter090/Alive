import modules.pytools as pytools
import os
import traceback

os.system("mkdir .\\gen_forceload_random")

forceloadRange = 416

def getChunkList():
    x = -int(forceloadRange / 16)
    relativeChunkList = []

    while x <= int(forceloadRange / 16):
        y = -int(forceloadRange / 16)
        while y <= int(forceloadRange / 16):
            relativeChunkList.append([x * 16, y * 16])
            y = y + 1
        x = x + 1
        
    return relativeChunkList
    
def getChunkQuadrents(chunkList):
    def _xKey(x):
        return x[0]

    def _yKey(x):
        return x[1]
    
    maxX = max(chunkList, key=_xKey)
    maxY = max(chunkList, key=_yKey)
    
    minX = min(chunkList, key=_xKey)
    minY = min(chunkList, key=_yKey)
    
    midX = (maxX[0] + minX[0]) / 2
    midY = (maxY[1] + minY[1]) / 2
    
    quadrents = [[], [], [], []] # top left (-x, +y), top right (+x, +y), bottom right (+x, -y), bottom left (-x, -y)
    
    for chunk in chunkList:
        if (chunk[0] <= midX) and (chunk[1] > midY):
            quadrents[0].append(chunk)
        if (chunk[0] > midX) and (chunk[1] > midY):
            quadrents[1].append(chunk)
        if (chunk[0] > midX) and (chunk[1] <= midY):
            quadrents[2].append(chunk)
        if (chunk[0] <= midX) and (chunk[1] <= midY):
            quadrents[3].append(chunk)
            
    return quadrents

def getQuadQuadrents(quadrentChunkList):
    quadrentChunkList[0] = getChunkQuadrents(quadrentChunkList[0])
    quadrentChunkList[1] = getChunkQuadrents(quadrentChunkList[1])
    quadrentChunkList[2] = getChunkQuadrents(quadrentChunkList[2])
    quadrentChunkList[3] = getChunkQuadrents(quadrentChunkList[3])
    
    i = 0
    while i < 4:
        if len(quadrentChunkList[i][0]) > 4:
            quadrentChunkList[i] = getQuadQuadrents(quadrentChunkList[i])
        
        i = i + 1
    
    return quadrentChunkList
    
def getDepth(listf):
    
    def seekDepth(listf, depth):
        depth = depth + 1
        if len(listf[0]) == 4:
            depth = seekDepth(listf[0], depth)
            
        return depth
    
    return seekDepth(listf, 0)

def resetStructure():
    os.chdir(".\\gen_forceload_random")
    os.system("del .\\* /f /s /q")
    os.system("rmdir .\\1 /s /q")
    os.system("rmdir .\\2 /s /q")
    os.system("rmdir .\\3 /s /q")
    os.system("rmdir .\\4 /s /q")
    os.chdir("..")

def generateFolderStructure(chunkDict):
    os.chdir(".\\gen_forceload_random")
    coordDepth = getDepth(chunkDict)
    
    def _makeSubFolders(depth):
        
        os.system("mkdir .\\1")
        os.system("mkdir .\\2")
        os.system("mkdir .\\3")
        os.system("mkdir .\\4")
        
        depth = depth - 1
        
        if depth > 0:
            for folder in os.listdir():
                os.chdir(folder)
                _makeSubFolders(depth)
                os.chdir("..")
                
    _makeSubFolders(coordDepth)
    
    os.chdir("..")
    
def generateSeekFunctionFiles(chunkDict):
    os.chdir(".\\gen_forceload_random")
    coordDepth = getDepth(chunkDict)
    
    def _modSubFolders(chunkDict, depth, maxDepth):
        
        seekFile = "# Define\n"

        if (maxDepth - depth) == 0:
            i = 0
            while i <= maxDepth:
                seekFile = seekFile + "scoreboard objectives add chunkForceloadSelectIndex" + str(i) + " dummy\n"
                i = i + 1
        pytools.IO.saveFile(".\\seek_depth_" + str(maxDepth - depth) + ".mcfunction", (seekFile + """                                           
# Main
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - depth)) + """=0..0}] run function gstools:cursor/chunk/forceload/""" + "/".join(os.getcwd().split("\\gen_forceload_random")[1].split("\\")) + """/1/seek_depth_""" + str(maxDepth - (depth - 1)) + """
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - depth)) + """=1..1}] run function gstools:cursor/chunk/forceload/""" + "/".join(os.getcwd().split("\\gen_forceload_random")[1].split("\\")) + """/2/seek_depth_""" + str(maxDepth - (depth - 1)) + """
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - depth)) + """=2..2}] run function gstools:cursor/chunk/forceload/""" + "/".join(os.getcwd().split("\\gen_forceload_random")[1].split("\\")) + """/3/seek_depth_""" + str(maxDepth - (depth - 1)) + """
execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - depth)) + """=3..3}] run function gstools:cursor/chunk/forceload/""" + "/".join(os.getcwd().split("\\gen_forceload_random")[1].split("\\")) + """/4/seek_depth_""" + str(maxDepth - (depth - 1)) + """
""").replace("//", "/"))
        
        depth = depth - 1
        
        if depth == 0:
            try:
                coords = list((int(x) - 1) for x in os.getcwd().split("\\gen_forceload_random")[1].split("\\")[1:])
                for folder in os.listdir():
                    strf = "# Define\n\n# Main\n"
                    entryIndex = 0
                    for entry in chunkDict[coords[0]][coords[1]][coords[2]][coords[3]][int(folder) - 1]:
                        strf = strf + "execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - (depth))) + "=" + str(entryIndex) + ".." + str(entryIndex) + ",cursorForceloadAddCommand=1..1}] run forceload add ~" + str(entry[0]) + " ~" + str(entry[1]) + " ~" + str(entry[0]) + " ~" + str(entry[1]) + "\n"
                        entryIndex = entryIndex + 1
                    entryIndex = 0
                    for entry in chunkDict[coords[0]][coords[1]][coords[2]][coords[3]][int(folder) - 1]:
                        strf = strf + "execute if entity @e[tag=gstools_worker,type=marker,scores={chunkForceloadSelectIndex""" + str(str(maxDepth - (depth))) + "=" + str(entryIndex) + ".." + str(entryIndex) + ",cursorForceloadAddCommand=0..0}] run forceload remove ~" + str(entry[0]) + " ~" + str(entry[1]) + " ~" + str(entry[0]) + " ~" + str(entry[1]) + "\n"
                        entryIndex = entryIndex + 1
                    pytools.IO.saveFile(".\\" + folder + "\\seek_depth_" + str(maxDepth - (depth)) + ".mcfunction", strf)
            except ValueError:
                pass
            except:
                print(str(coords) + " " + folder)
                print(chunkDict[coords[0]][coords[1]][coords[2]][coords[3]])
                print(traceback.format_exc())
        
        if depth > 0:
            for folder in os.listdir():
                try:
                    os.chdir(folder)
                    _modSubFolders(chunkDict, depth, maxDepth)
                    os.chdir("..")
                except NotADirectoryError:
                    pass
                except:
                    print(traceback.format_exc())
                    
    _modSubFolders(chunkDict, coordDepth, coordDepth)
    
    os.chdir("..")
        
    
    

