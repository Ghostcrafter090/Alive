import modules.pytools as pytools
import subprocess
import os
import traceback

class globals:
    changedFiles = []

def processExecute(struct):
    commandStarted = False
    queryIndex = 0
    
    segments = []
    
    types = [
        "align",
        "anchored",
        "as",
        "at",
        "facing",
        "if",
        "in",
        "on",
        "positioned",
        "rotated",
        "store",
        "summon",
        "unless"
    ]
    
    collector = []
    
    lastSeg = ""
    
    for seg in struct:
        if seg != "execute":
            if seg in types:
                if lastSeg != "rotated":
                    segments.append(" ".join(collector))
                    collector = []
                lastSeg = seg
            if commandStarted:
                collector.append(seg)
            else:
                collector = ["execute"]
                collector.append(seg)
                commandStarted = True
    
    segments.append(" ".join(collector))
    
    try:
        segments.remove('')
    except:
        pass
    
    return segments

def compile(fileData, fileName, path):
    
    executeData = {}
    outFile = []
    
    lastExecuteLine = []
    
    lineIndex = 0
    commandIndex = -1
    
    for line in fileData:
        if ("execute" in line) and (line.replace(" ", "")[0] != "#"):
            statement = line.split(" run ")[0]
            try:
                command = line.split(" run ")[1]
            except:
                command = False
            
            statementStruct = []
            
            ignoreSpaces = False
            ignoreQuote = True
            
            collector = ""
            
            for key in statement:
                if key == "\\":
                    ignoreQuote = True
                if ((key == "\"") or (key == "'")) and not ignoreQuote:
                    if not ignoreSpaces:
                        ignoreSpaces = True
                    else:
                        ignoreSpaces = False
                
                if (not ignoreSpaces) and (key == " "):
                    statementStruct.append(collector)
                    collector = ""
                if key != "\\":
                    ignoreQuote = False
                
                if not ((not ignoreSpaces) and (key == " ")):
                    collector = collector + key
            
            statementStruct.append(collector)
            
            # print(statementStruct)
            segments = processExecute(statementStruct)
            
            if (commandIndex == -1) or (lastExecuteLine[0] != segments[0]):
                commandIndex = lineIndex
                if command:
                    executeData[commandIndex] = {
                        "command": segments[0],
                        "data": [("execute " + " ".join(segments[1:]) + " run " + command).replace("execute  run ", "")]
                    }
                else:
                    executeData[commandIndex] = {
                        "command": segments[0],
                        "data": [("execute " + " ".join(segments[1:]))]
                    }
            
            else:
                if command:
                    executeData[commandIndex]["data"].append(("execute " + " ".join(segments[1:]) + " run " + command).replace("execute  run ", ""))
                else:
                    executeData[commandIndex]["data"].append(("execute " + " ".join(segments[1:])))
            
            lastExecuteLine = segments
        else:
            lastExecuteLine = ["-1"]
            commandIndex = -1
            executeData[lineIndex] = {
                "command": line,
                "data": False
            }
        
        lineIndex = lineIndex + 1
    
    lineKeys = sorted(list(executeData.keys()))
    
    externalFiles = {}
    
    for lineNumber in lineKeys:
        if executeData[lineNumber]["data"]:
            if len(executeData[lineNumber]["data"]) > 1:
                externalFiles[fileName.split(".mcfunction")[0] + "_sub\\" + str(lineNumber) + ".mcfunction"] = "\n".join(executeData[lineNumber]["data"]).replace("execute  run ", "").replace("execute run ", "")
                outFile.append(executeData[lineNumber]["command"] + " run function " + path + "_sub/" + str(lineNumber))
            else:
                if "execute " in executeData[lineNumber]["data"][0]:
                    outFile.append(executeData[lineNumber]["command"] + executeData[lineNumber]["data"][0].split("execute")[1])
                else:
                    outFile.append(executeData[lineNumber]["command"] + " run " + executeData[lineNumber]["data"][0])
        else:
            outFile.append(executeData[lineNumber]["command"])
            
    return ["\n".join(outFile), externalFiles]
    
def run(path, namespace, compileEverything=False):
    
    fileChanges = []
    for file in subprocess.getoutput("git status -s").replace("\n M ", "\n")[3:].replace("/", "\\").split("\n"):
        if "\\data\\" in file:
            fileChanges.append(file.split("\\data\\")[1].replace("\\function\\", "\\"))
            
    try:
        try:
            os.mkdir(".\\datapack_compile_temp")
        except:
            pass
        os.system("robocopy \"" + path + "\" \".\\datapack_compile_temp\" * /mir")
        os.chdir(".\\datapack_compile_temp")
        
        i = 0
        while i < 100:
            print("STARTING PASS. PASS NUMBER: " + str(i))
            hasCreatedSubfile = False
            fileList = subprocess.getoutput("dir /s /b *.mcfunction").split('\n')
            
            # print(fileList)
            # print(os.getcwd())
            
            for file in fileList:
                if os.path.exists(file) and (((namespace + "\\" + file.split("datapack_compile_temp\\")[1]) in fileChanges) or (compileEverything)):
                    
                    if (namespace + "\\" + file.split("datapack_compile_temp\\")[1]) not in globals.changedFiles:
                        globals.changedFiles.append(namespace + "\\" + file.split("datapack_compile_temp\\")[1])
                    
                    fileData = pytools.IO.getFile(file).replace(" run execute ", " ").split("\n")
                    mcpath = namespace + ":" + ".".join(file.replace(os.getcwd() + "\\", "").replace("\\", "/").split(".")[:-1])
                    # print(path)
                    
                    print("    > Compiling path \"" + mcpath + "\"...")
                    
                    outData = compile(fileData, file.split("\\")[-1], mcpath)
                    
                    pytools.IO.saveFile(file, outData[0])
                    for externalFile in outData[1]:
                        if not os.path.exists("\\".join(file.split("\\")[:-1]) + "\\" + externalFile.split("\\")[0]):
                            print("      --> Creating subfile \"" + str("\\".join(file.split("\\")[:-1]) + "\\" + externalFile) + "\"...")
                            os.mkdir("\\".join(file.split("\\")[:-1]) + "\\" + externalFile.split("\\")[0])
                        pytools.IO.saveFile("\\".join(file.split("\\")[:-1]) + "\\" + externalFile, outData[1][externalFile])
                        hasCreatedSubfile = True
                
                else:
                    os.system("del \"" + file + "\" /f /q")
            i = i + 1
            if not hasCreatedSubfile:
                i = 1000
    except:
        print(traceback.format_exc())
    os.chdir("..")