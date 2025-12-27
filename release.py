import modules.pytools as pytools
import modules.curseforge as curseforge

import subprocess
import sys

import copy

class globals:
    aReleaseSchedule = pytools.IO.getJson("release_schedule.json")

def getReleasesToday(withReleasedToday=False):
    aList = []
    for aRelease in globals.aReleaseSchedule["list"]:
        if ((pytools.clock.dateArrayToUTC(pytools.clock.getDateTime()) > pytools.clock.dateArrayToUTC(aRelease["releaseDate"])) and (not aRelease["isReleased"])) or (withReleasedToday and (pytools.clock.getDateTime()[0:3] == aRelease["releaseDate"][0:3]) and aRelease["isReleased"]):
            aList.append(aRelease)
            
    return aList

def getToRelease():
    aList = []
    for aRelease in globals.aReleaseSchedule["list"]:
        if not aRelease["isReleased"]:
            aList.append(aRelease)
            
    return aList
            
def getFarthestReleaseDate():
    farthest = pytools.clock.getDateTime()
    farthest[2] = farthest[2] - 1
    for aRelease in globals.aReleaseSchedule["list"]:
        if ((pytools.clock.dateArrayToUTC(farthest) < pytools.clock.dateArrayToUTC(aRelease["releaseDate"]))):
            farthest = aRelease["releaseDate"]
    
    return farthest

def getEarliestReleaseDate():
    earliest = {
        "version": False,
        "releaseDate": False,
        "isReleased": True
    }
    
    for aRelease in globals.aReleaseSchedule["list"]:
        if (not earliest["releaseDate"]) or ((pytools.clock.dateArrayToUTC(earliest["releaseDate"]) > pytools.clock.dateArrayToUTC(aRelease["releaseDate"]))):
            if not aRelease["isReleased"]:
                earliest = aRelease
    
    return earliest

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
complete = False
force = False
doTest = False
for arg in sys.argv:
    if arg == "--release":
        doRun = True
    if arg == "--newRelease":
        complete = True
    if arg == "--forceRelease":
        force = True
    if arg == "--test":
        doTest = True

if doRun:
    if complete:
        if (len(getReleasesToday(withReleasedToday=True)) < 1) or force:
            print("Releasing new mod version!")
            for mod in curseforge.projectIdDict:
                if not doTest:
                    releaseMod(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), mod)
        
            globals.aReleaseSchedule["list"].append({
                "version": (".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3])),
                "releaseDate": pytools.clock.getDateTime(),
                "isReleased": True
            })
            
            if force:
                i = 0
                while i < len(globals.aReleaseSchedule["list"]):
                    globals.aReleaseSchedule["list"][i]["isReleased"] = True
                    i = i + 1
            
            if not doTest:
                pytools.IO.saveJson("release_schedule.json", globals.aReleaseSchedule)
        
        else:
            print("Release already made today. Waiting for later...")
            aReleaseDate = copy.deepcopy(getFarthestReleaseDate())
            
            aReleaseDate[2] = aReleaseDate[2] + 1
            if aReleaseDate[2] > pytools.clock.getMonthEnd(aReleaseDate[1]):
                aReleaseDate[2] = aReleaseDate[2] - pytools.clock.getMonthEnd(aReleaseDate[1])
                aReleaseDate[1] = aReleaseDate[1] + 1
                if aReleaseDate[1] > 12:
                    aReleaseDate[1] = aReleaseDate[1] - 12
                    aReleaseDate[0] = aReleaseDate[0] + 1
            
            globals.aReleaseSchedule["list"].append({
                "version": (".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3])),
                "releaseDate": aReleaseDate,
                "isReleased": False
            })
            
            print(globals.aReleaseSchedule)
            
            if not doTest:
                pytools.IO.saveJson("release_schedule.json", globals.aReleaseSchedule)
            
    else:
        if len(getToRelease()):
            if (len(getReleasesToday(withReleasedToday=True)) < 1) or force:
                print("Releasing scheduled mod version!")
                theRelease = copy.deepcopy(getEarliestReleaseDate())
                for mod in curseforge.projectIdDict:
                    releaseMod(theRelease["version"], mod)
                
                i = 0
                for aRelease in globals.aReleaseSchedule["list"]:
                    if aRelease["version"] == theRelease["version"]:
                        break
                    i = i + 1
                    
                globals.aReleaseSchedule["list"][i]["isReleased"] = True
                
                if not doTest:
                    pytools.IO.saveJson("release_schedule.json", globals.aReleaseSchedule)
            else:
                print("Release already made today. Waiting for tomorrow...")
        else:
            print("Nothing to release.")
            
            