import modules.pytools as pytools
import os
import sys

import datapack_compile as datapackCompiler

def getDatapacks():
    dirList = os.listdir()
    outList = []
    for dir in dirList:
        if os.path.exists(".\\" + dir + "\\pack.mcmeta"):
            outList.append(dir)
            
    return outList

def compileDatapack(name):
    os.system("robocopy \".\\" + name + "\" \"..\\datapacks\\" + name + "\" * /mir")
    compileFolders = os.listdir(".\\" + name + "\\data")
    for folder in compileFolders:
        datapackCompiler.run(".\\" + name + "\\data\\" + folder + "\\function", folder)
        os.system("robocopy \".\\datapack_compile_temp\" \"..\\datapacks\\" + name + "\\data\\" + folder + "\\function\" * /mir")
        
if sys.argv[1] == "--run":
    for datapack in getDatapacks():
        compileDatapack(datapack)