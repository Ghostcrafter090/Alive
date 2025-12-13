import modules.pytools as pytools
import compile

import subprocess
import os

def compileDatapackIntoMod(folderName):
    jarFileList = subprocess.getoutput("dir \".\\mod-*.jar\" /s /b")
    for jarFile in jarFileList:
        pytools.IO.unpack(jarFile, ".\\temp_dir")
        os.system("robocopy \"" + folderName + "\\data\" \".\\temp_dir\\data\" * /mir")
        os.system("copy \"a;obe")
        