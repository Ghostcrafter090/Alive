import modules.pytools as pytools
import modules.curseforge as curseforge

import subprocess
import sys

def releaseMod(releaseNumber, modId):
    for file in subprocess.getoutput("dir \".\\releases\\" + releaseNumber + "\\*.jar\" /b").split('\n'):
        print(file)
        projectName = file.split("-")[0]
        loaderVersion = file.split("-")[1]
        gameVersion = file.split("-")[2].split("_")[0]
        modVersion = file.split("-")[2].split("_")[1].split(".jar")[0]
        
        if projectName == modId:
        
            curseforge.uploadFile(".\\releases\\" + releaseNumber + "\\" + file, projectName, loaderVersion, gameVersion, modId + " " + loaderVersion + " " + gameVersion + " " + modVersion, "\n - ".join(pytools.IO.getJson(".\\releases\\" + releaseNumber + "\\release.json")["releaseHistory"]))


doRun = False
for arg in sys.argv:
    if arg == "--run":
        doRun = True

if doRun:
    for mod in curseforge.projectIdDict:
        releaseMod(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), mod)