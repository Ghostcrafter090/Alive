import modules.pytools as pytools
import modules.curseforge as curseforge
import modules.modrinth as modrinth
import modules.logManager as log
import importlib
import threading

import subprocess
import sys

import autoTest

import copy

print = log.printLog

class globals:
    aReleaseSchedule = pytools.IO.getJson("release_schedule.json")

def getReleasesToday():
    aList = []
    for aRelease in globals.aReleaseSchedule["list"]:
        if ((pytools.clock.getDateTime()[0:3] == aRelease["releaseDate"][0:3]) and aRelease["isReleased"]):
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

def releaseMod(releaseNumber, modId, versionTestData=False, doModrinth=True, doCurseforge=True):
    for file in subprocess.getoutput("dir \".\\releases\\" + releaseNumber + "\\*.jar\" /b").split('\n'):
        
        print(file)
        
        projectName = file.split("-")[0]
        loaderVersion = file.split("-")[1]
        gameVersion = file.split("-")[2].split("_")[0]
        modVersion = file.split("-")[2].split("_")[1].split(".jar")[0]
        
        if projectName == modId:
            if (not versionTestData) or versionTestData[loaderVersion][gameVersion]:
                
                print((".\\releases\\" + releaseNumber + "\\" + file) + str(projectName) + str(loaderVersion) + str(gameVersion) + str(modId + " " + loaderVersion + " " + gameVersion + " " + modVersion) + str("\n - ".join(pytools.IO.getJson(".\\releases\\" + releaseNumber + "\\release.json")["releaseHistory"])))
                
                if doCurseforge:
                    curseforge.uploadFile(".\\releases\\" + releaseNumber + "\\" + file, projectName, loaderVersion, gameVersion, modId + " " + loaderVersion + " " + gameVersion + " " + modVersion, "\n - ".join(pytools.IO.getJson(".\\releases\\" + releaseNumber + "\\release.json")["releaseHistory"]))
                if doModrinth:
                    modrinth.uploadFile(".\\releases\\" + releaseNumber + "\\" + file, projectName, loaderVersion, gameVersion, releaseNumber, modId + " " + loaderVersion + " " + gameVersion + " " + modVersion, "\n - ".join(pytools.IO.getJson(".\\releases\\" + releaseNumber + "\\release.json")["releaseHistory"]))

doRun = False
complete = False
force = False
doTest = False
skipTest = False
doModrinth = True
doCurseforge = True
for arg in sys.argv:
    if arg == "--release":
        doRun = True
    if arg == "--newRelease":
        complete = True
    if arg == "--forceRelease":
        force = True
    if arg == "--test":
        doTest = True
    if arg == "--skipTest":
        skipTest = True
    if arg == "--onlyModrinth":
        doCurseforge = False
    if arg == "--onlyCurseforge":
        doModrinth = False

class testCompleteChunk:
    def __init__(self, autoTestInstance):
        self.autoTestInstance = autoTestInstance
        self.output = False
        
    def start(self, *args):
        self.args = args
        self.thread = threading.Thread(target=self.run)
        self.thread.start()
    
    def run(self):
        self.started = True
        self.output = self.autoTestInstance.testCompleteVersion(*self.args)
        self.completed = True
    
    def join(self):
        self.thread.join()
        return self.output

if doRun:
    if complete:
        if (len(getReleasesToday()) < 1) or force:
            print("Releasing new mod version!")
            
            if not skipTest:
                autoTest0 = importlib.reload(autoTest)
                autoTest1 = importlib.reload(autoTest)
                autoTest2 = importlib.reload(autoTest)                                     
                
                test0 = testCompleteChunk(autoTest0)
                test1 = testCompleteChunk(autoTest1)
                test2 = testCompleteChunk(autoTest2)
                                                                
                test0.start(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), 0)
                test1.start(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), 1)
                test2.start(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), 2)
                
                testCompletion0 = test0.join()
                testCompletion1 = test1.join()
                testCompletion2 = test2.join()
                
                testCompletion = {}
                for loader in testCompletion0:
                    for version in testCompletion0[loader]:
                        if loader not in testCompletion:
                            testCompletion[loader] = {}
                        testCompletion[loader][version] = testCompletion0[loader][version]
                
                for loader in testCompletion1:
                    for version in testCompletion1[loader]:
                        if loader not in testCompletion:
                            testCompletion[loader] = {}
                        testCompletion[loader][version] = testCompletion1[loader][version]
                
                for loader in testCompletion2:
                    for version in testCompletion2[loader]:
                        if loader not in testCompletion:
                            testCompletion[loader] = {}
                        testCompletion[loader][version] = testCompletion2[loader][version]
                        
                pytools.IO.saveJson(".\\releases\\" + ".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]) + "\\cases.json", testCompletion)

            else:
                testCompletion = False
                
            for mod in curseforge.projectIdDict:
                if not doTest:
                    releaseMod(".".join(str(x) for x in pytools.IO.getJson("version_history.json")["current_version"][0:3]), mod, versionTestData=testCompletion, doModrinth=doModrinth, doCurseforge=doCurseforge)

            if not skipTest:
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
            if (len(getReleasesToday()) < 1) or force:
                print("Releasing scheduled mod version!")
                theRelease = copy.deepcopy(getEarliestReleaseDate())
                
                if not skipTest:
                    # testCompletion = autoTest.testCompleteVersion(theRelease["version"])                    
                    
                    test0 = testCompleteChunk(autoTest)
                    test1 = testCompleteChunk(autoTest)
                    test2 = testCompleteChunk(autoTest)
                    
                    test0.start(theRelease["version"], 0)
                    test1.start(theRelease["version"], 1)
                    test2.start(theRelease["version"], 2)
                    
                    testCompletion0 = test0.join()
                    testCompletion1 = test1.join()
                    testCompletion2 = test2.join()
                    
                    testCompletion = {}
                    for loader in testCompletion0:
                        for version in testCompletion0[loader]:
                            if loader not in testCompletion:
                                testCompletion[loader] = {}
                            testCompletion[loader][version] = testCompletion0[loader][version]
                    
                    for loader in testCompletion1:
                        for version in testCompletion1[loader]:
                            if loader not in testCompletion:
                                testCompletion[loader] = {}
                            testCompletion[loader][version] = testCompletion1[loader][version]
                    
                    for loader in testCompletion2:
                        for version in testCompletion2[loader]:
                            if loader not in testCompletion:
                                testCompletion[loader] = {}
                            testCompletion[loader][version] = testCompletion2[loader][version]
                            
                    pytools.IO.saveJson(".\\releases\\" + theRelease["version"] + "\\cases.json", testCompletion)        
                    
                else:
                    testCompletion = False
                
                for mod in curseforge.projectIdDict:
                    releaseMod(theRelease["version"], mod, versionTestData=testCompletion, doModrinth=doModrinth, doCurseforge=doCurseforge)
                
                if not skipTest:
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
            
            