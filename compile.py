import modules.pytools as pytools
import os
import sys
import time

import datapack_compile as datapackCompiler

class flags:
    compileEverything = False

def getDatapacks():
    dirList = os.listdir()
    outList = []
    for dir in dirList:
        if os.path.exists(".\\" + dir + "\\pack.mcmeta"):
            outList.append(dir)
            
    return outList

def compileDatapack(name):
    compileFolders = os.listdir(".\\" + name + "\\data")
    for folder in compileFolders:
        datapackCompiler.run(".\\" + name + "\\data\\" + folder + "\\function", folder, compileEverything=flags.compileEverything)
        if flags.compileEverything:
            os.system("robocopy \".\\datapack_compile_temp\" \"..\\datapacks\\" + name + "\\data\\" + folder + "\\function\" * /mir")
        else:
            os.system("xcopy \".\\datapack_compile_temp\\*\" \"..\\datapacks\\" + name + "\\data\\" + folder + "\\function\" /e /c /y")

doRun = False
for arg in sys.argv:
    if arg == "--run":
        doRun = True
    if arg == "--everything":
        flags.compileEverything = True

if doRun:
    for datapack in getDatapacks():
        compileDatapack(datapack)

    os.system("git add *")
    os.system("git commit -m \"File Changes: \" -m \"" + "\" -m \"\\t".join(datapackCompiler.globals.changedFiles) + "\"")
    os.system("git push")