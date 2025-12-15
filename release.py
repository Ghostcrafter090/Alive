import modules.pytools as pytools
import modules.curseforge as curseforge

import subprocess

def releaseMod(releaseNumber, modId):
    for file in subprocess.getoutput("dir \".\\releases\\" + releaseNumber + "\\*.jar\" /b"):
        projectName = file.split("-")[0]
        loaderVersion = file.split("-")[1]
        gameVersion = file.split("-")[2].split("_")[0]
        modVersion = file.split("-")[2].split("_")[1]
        
        curseforge.uploadFile(".\\releases\\" + releaseNumber + "\\" + file, projectName, loaderVersion, gameVersion, modId + " " + modVersion, "\n - ".join(pytools.IO.getJson(".\\releases\\" + releaseNumber + "\\release.json")["releaseHistory"]))
        