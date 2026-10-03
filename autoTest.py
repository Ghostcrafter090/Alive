import modules.pytools as pytools
import os
import subprocess
import time
import traceback
import json
import sys
import copy
import modules.curseforge as curseforge

printf = print

class flags:
    manualStop = False

class analyze:
    
    def __init__(self):
        pass
    
    testDate = pytools.clock.getDateTime()
    
    report = ""
    
    def reset(self):
        self.report = ""
        
    def printReport(self, data):
        printf(self, data)
        self.report = self.report + "\n" + str(data)
    
    def logFile(self, _split=-1, print=print):
        _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
        
        blocksFucked = []
        doPrint = False
        isError = False
        logFile = pytools.IO.getFile(".\\" + _automatedTest + "\\logs\\latest.log").split("\n")
        
        cases = []
        
        for line in logFile:
            if "Failed to load function" in line:
                if not "version_conflict" in line:
                    if ("blockdecay:decay/" in line) or ("blockdecay:compat/" in line):
                        if line.split("blockdecay:")[1].split("_sub")[0].split("/")[-1] not in blocksFucked: 
                            print("WARNING: " + line)
                            blocksFucked.append(line.split("blockdecay:")[1].split("_sub")[0].split("/")[-1])
        
        for line in logFile:
            successVar = True
            if doPrint:
                successVar = False
                if line[0] == "[":
                    if not isError:
                        doPrint = False
                else:
                    print(line)
                    
                if "Invalid or unknown entity type" in line:
                    if not isError:
                        doPrint = False
                    successVar = True
                if "Unknown block type" in line:
                    if not isError:
                        doPrint = False
                    successVar = True
                if "Can't find element 'gstools:" in line:
                    if not isError:
                        doPrint = False
                    successVar = True
               
            if "Failed to load function" in line:
                if not "version_conflict" in line:
                    if not "blockdecay:decay/" in line:
                        if not "timelib" in line:
                            if not "gstools:compat" in line:
                                if not "minecraft:compat" in line:
                                    doPrint = True
                                    print(line)
            
            if "Errors in registry minecraft:root:" in line:
                isError = True
                doPrint = True
                print(line)
                successVar = False
            
            if "<test>" in line:
                jsonData = json.loads(line.split("<test> ")[1])
                if jsonData["success"]:
                    print("Test With Name " + str(jsonData["testName"]) + " completed successfully!")
                    successVar = True
                else:
                    print("ERROR: TEST " + str(jsonData["testName"]) + " DID NOT COMPLETE SUCCESSFULLY.")
                    successVar = False
            
            cases.append(successVar)
            
        return all(cases)
    
    def save(self, _split=-1):
        _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
        os.system("mkdir prior_tests")
        os.system("mkdir \".\\prior_tests\\" + str(self.testDate[0]) + "-" + str(self.testDate[1]) + "-" + str(self.testDate[2]) + "\"")
        pytools.IO.saveFile(".\\prior_tests\\" + str(self.testDate[0]) + "-" + str(self.testDate[1]) + "-" + str(self.testDate[2]) + "\\" + str(len(os.listdir(".\\prior_tests\\" + str(self.testDate[0]) + "-" + str(self.testDate[1]) + "-" + str(self.testDate[2]) + "\\."))) + ".test", self.report)
        os.system("copy .\\" + _automatedTest + "\\logs\\latest.log \".\\prior_tests\\" + str(self.testDate[0]) + "-" + str(self.testDate[1]) + "-" + str(self.testDate[2]) + "\\" + str(len(os.listdir(".\\prior_tests\\" + str(self.testDate[0]) + "-" + str(self.testDate[1]) + "-" + str(self.testDate[2]) + "\\."))) + ".log\" /y")
                  
# print = analyze.printReport

class util:
    def getJavaVersionFromMinecraft(version, print=print):
        try:
            if int(version.split(".")[0]) < 26:
                return "Jre_21"
            else:
                return "Jre_25"
        except:
            print(traceback.format_exc())
            return "Jre_25"

def getModFiles(loader, version, modReleaseNumber, _split=-1, print=print):
    modFiles = []
    gameVersionDict = pytools.IO.getJson("game_versions.json")
    
    _gameVersionDict = {}
    
    print("dir \".\\releases\\" + modReleaseNumber + "\\*.jar\" /b")
    for file in subprocess.getoutput("dir \".\\releases\\" + modReleaseNumber + "\\*.jar\" /b").split('\n'):
        print(file)
        projectName = file.split("-")[0]
        loaderVersion = file.split("-")[1]
        gameVersion = file.split("-")[2].split("_")[0]
        modVersion = file.split("-")[2].split("_")[1].split(".jar")[0]
        
        _gameVersionDict[projectName] = copy.deepcopy(gameVersionDict)
        if projectName in gameVersionDict["splits"]:
            for aLoader in gameVersionDict["splits"][projectName]:
                for mcVersion in gameVersionDict["splits"][projectName][aLoader]:
                    for aVersion in gameVersionDict[aLoader][mcVersion]:
                        try:
                            _gameVersionDict[projectName][aLoader][mcVersion].remove(aVersion)
                        except:
                            print(traceback.format_exc())
                        _gameVersionDict[projectName][aLoader][aVersion] = [aVersion]
                        
                        
            if loaderVersion == loader:
                for aVersion in _gameVersionDict[projectName][loader]:
                    if version in _gameVersionDict[projectName][loader][aVersion]:
                        if gameVersion == aVersion:
                            print(".\\releases\\" + modReleaseNumber + "\\" + file)
                            modFiles.append(".\\releases\\" + modReleaseNumber + "\\" + file)
        
        else:
            if loaderVersion == loader:
                for aVersion in _gameVersionDict[projectName][loader]:
                    if version in _gameVersionDict[projectName][loader][aVersion]:
                        if gameVersion == aVersion:
                            print(".\\releases\\" + modReleaseNumber + "\\" + file)
                            modFiles.append(".\\releases\\" + modReleaseNumber + "\\" + file)
                            
    if loader == "neoforge":
        if version in curseforge.versionsSupportingWeather2:
            modFiles.append(".\\basemod\\weather2_c\\build\\libs\\gstoolsweather2compat-1.0.2.jar")
                
    return modFiles

def setupServer(loader, version, _split=-1, print=print):
    
    _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
    
    os.system("rmdir .\\" + _automatedTest + "\\world\\datapacks")
    os.system("del .\\" + _automatedTest + "\\* /f /s /q")
    try:
        if loader == "neoforge":
            neoforgeVersions = pytools.net.getJsonAPI("https://maven.neoforged.net/api/maven/versions/releases/net%2Fneoforged%2Fneoforge")
            try:
                version.split(".")[2]
            except:
                version = version + ".0"
            for x in neoforgeVersions["versions"]:
                if float(x.split(".")[0]) >= 26:
                    if (x.split(".")[0] == version.split(".")[0]) and (x.split(".")[1] == version.split(".")[1]) and (x.split(".")[2] == version.split(".")[2]):
                        neoforgeVersion = x
                else:
                    if (x.split(".")[0] == version.split(".")[1]) and (x.split(".")[1] == version.split(".")[2]):
                        neoforgeVersion = x
            
            print("Grabbing neoforge version " + str(neoforgeVersion) + " for minecraft version " + str(version) + "...")
            print(subprocess.getoutput("curl -O --output-dir .\\" + _automatedTest + " https://maven.neoforged.net/releases/net/neoforged/neoforge/<neoforgeVersion>/neoforge-<neoforgeVersion>-installer.jar".replace("<neoforgeVersion>", neoforgeVersion)))
            for x in os.listdir(".\\" + _automatedTest):
                if (".jar" in x) and ("neoforge-" in x):
                    os.system("start /d .\\" + _automatedTest + " /b /wait \"\" java -jar " + x + " --installServer")
                    
            runFile = pytools.IO.getFile(".\\" + _automatedTest + "\\run.bat")
            runFile = runFile.replace("java ", "..\\java\\" + util.getJavaVersionFromMinecraft(version, print=print) + "\\bin\\alive_" + _automatedTest + " ")
            runFile = runFile.replace("pause", "")
            pytools.IO.saveFile(".\\" + _automatedTest + "\\run.bat", runFile)
                    
        if loader == "fabric":
            print("Grabbing fabric version 0.18.4, 1.1.1 for minecraft version " + str(version) + "...")
            if (int(version.split(".")[0]) < 26) or (int(version.split(".")[1]) < 3):
                print(subprocess.getoutput("curl --output-dir .\\" + _automatedTest + " -OJ https://meta.fabricmc.net/v2/versions/loader/<version>/0.18.4/1.1.1/server/jar".replace("<version>", version)))
            else:
                print(subprocess.getoutput("curl --output-dir .\\" + _automatedTest + " -OJ https://meta.fabricmc.net/v2/versions/loader/<version>/0.19.3/1.1.1/server/jar".replace("<version>", version)))
            for x in os.listdir(".\\" + _automatedTest):
                if (".jar" in x) and ("fabric" in x):
                    os.system("start /d .\\" + _automatedTest + " /b /wait "" .\\java\\" + util.getJavaVersionFromMinecraft(version, print=print) + "\\bin\\java -Xmx2G -jar " + x + " nogui")
            
            os.system("mkdir .\\" + _automatedTest + "\\mods")
            os.system("xcopy .\\libs\\fabric_api\\" + version + "\\*.jar .\\" + _automatedTest + "\\mods /e /c /y /i")        
            
        if loader == "forge":
            # forgeVersion = pytools.net.getJsonAPI("https://mc-versions-api.net/api/forge?detailed=true&version=<version>&version=<version>".replace("<version>", version))["result"][0]["version"]
            
            try:
                listOfVersions = pytools.net.getJsonAPI("https://mrnavastar.github.io/ForgeVersionAPI/forge-versions.json")
                pytools.IO.saveJson(".\\forge_versions.json", listOfVersions)
            except:
                listOfVersions = pytools.IO.getJson(".\\forge_versions.json")
            
            for aMinecraftVersion in listOfVersions:
                if aMinecraftVersion == version:
                    forgeVersion = listOfVersions[aMinecraftVersion][0]["id"]
            
            print("Grabbing forge version " + str(forgeVersion) + " for minecraft version " + str(version) + "...")
            os.system("curl --output-dir .\\" + _automatedTest + " -O https://maven.minecraftforge.net/net/minecraftforge/forge/<version>-<forgeVersion>/forge-<version>-<forgeVersion>-installer.jar".replace("<version>", version).replace("<forgeVersion>", forgeVersion))
            for x in os.listdir(".\\" + _automatedTest):
                if (".jar" in x) and ("forge-" in x):
                    os.system("start /d .\\" + _automatedTest + " /b /wait "" java -jar " + x + " --installServer")
            
            runFile = pytools.IO.getFile(".\\" + _automatedTest + "\\run.bat")
            runFile = runFile.replace("java ", "..\\java\\" + util.getJavaVersionFromMinecraft(version, print=print) + "\\bin\\alive_" + _automatedTest + " ")
            runFile = runFile.replace("pause", "")
            pytools.IO.saveFile(".\\" + _automatedTest + "\\run.bat", runFile)
        
        pytools.IO.saveFile(".\\" + _automatedTest + "\\eula.txt", """#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
    #Fri Jan 09 14:04:31 AST 2026
    eula=true
    """)            
    except:
        print(traceback.format_exc())
    
    os.system("xcopy .\\server.properties .\\" + _automatedTest + " /c /y /i")
    pytools.IO.saveFile(".\\" + _automatedTest + "\\server.properties", pytools.IO.getFile(".\\" + _automatedTest + "\\server.properties").replace("25565", str(25565 + _split)).replace("25575", str(25575 + _split)))
    
    # os.chdir("..")
    
def copyModFiles(modFiles, _split=-1, print=print):
    
    _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
    
    for file in modFiles:
        os.system("xcopy \"" + file + "\" .\\" + _automatedTest + "\\mods /c /y /i")
    
    os.system("rmdir \".\\" + _automatedTest + "\\world\" /s /q")
    os.system("mkdir \".\\" + _automatedTest + "\\world\"")
    os.system("mkdir \".\\" + _automatedTest + "\\world\\datapacks\"")
    os.system("mkdir \".\\" + _automatedTest + "\\world\\datapacks\\test_datapack\"")
    
    os.system("xcopy \".\\test_datapack\" \".\\" + _automatedTest + "\\world\\datapacks\\test_datapack\" /e /c /y /i")
    os.system("mkdir .\\" + _automatedTest + "\\world\\datapacks\\test_datapack\\data\\test\\functions")
    os.system("xcopy .\\" + _automatedTest + "\\world\\datapacks\\test_datapack\\data\\test\\function\\* .\\" + _automatedTest + "\\world\\datapacks\\test_datapack\\data\\test\\functions /e /c /y /i")
    
def launch(loader, version, _split=-1, print=print):
    
    _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
    
    try:
        for javaFolder in os.listdir(".\\java"):
            os.system("copy \".\\java\\" + javaFolder + "\\bin\\java.exe\" \".\\java\\" + javaFolder + "\\bin\\alive_" + _automatedTest + ".exe\" /y")
        
        if loader == "fabric":
            for x in os.listdir(".\\" + _automatedTest):
                if (".jar" in x) and ("fabric" in x):
                    os.system("start /d \".\\" + _automatedTest + "\" /b \"\" .\\java\\" + util.getJavaVersionFromMinecraft(version, print=print) + "\\bin\\alive_" + _automatedTest + ".exe -Xmx2G -jar " + x + " nogui")
        else:
            os.system("start /d \".\\" + _automatedTest + "\" /b \"\" cmd.exe /c run.bat")
        
        isGood = True
        
        try:
            i = 0
            while ("[framework_marker]" not in str(pytools.IO.getFile(".\\" + _automatedTest + "\\logs\\latest.log"))) and (i < 90):
                print("testing_watchdog_waiting")
                i = i + 1
                time.sleep(1)
            
            if i < 60:
                i = 0
                print("Testing Started...")
                while ("[framework_testing_ended]" not in str(pytools.IO.getFile(".\\" + _automatedTest + "\\logs\\latest.log"))) and (i < 240):
                    print("testing_watchdog_loop")
                    i = i + 1
                    time.sleep(1)
                
                if i >= 240:
                    print("WATCHDOG_LOOP_TIMEOUT_REACHED! ABORTING...")
                    isGood = False
                    
            else:
                print("WATCHDOG_WAIT_TIMEOUT_REACHED! ABORTING...")
                isGood = False
        except:
            print(traceback.format_exc())
            isGood = False
        
        if flags.manualStop:
            print("manual_watchdog_start")
            while ("Stopping server" not in str(pytools.IO.getFile(".\\" + _automatedTest + "\\logs\\latest.log"))):
                time.sleep(1)
    except:
        print(traceback.format_exc())
    os.system("taskkill /f /im alive_" + _automatedTest + ".exe")
    # os.chdir("..")
    
    return isGood

def runAutomatedTest(loader, version, modReleaseNumber, isBeta=False, isDebug=False, _split=-1, print=print, analyze=analyze()):
    
    _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
    
    analyze.reset()
    try:
        if not isDebug:
            setupServer(loader, version, _split=_split, print=print)
        if isBeta and (not isDebug):
            os.system("rmdir .\\" + _automatedTest + "\\world\\datapacks")
            os.system("rmdir .\\" + _automatedTest + "\\world\\datapacks /s /q")
            os.system("mklink /j .\\" + _automatedTest + "\\world\\datapacks ..\\datapacks")
            os.system("ren .\\" + _automatedTest + "\\world\\datapacks\\data\\minecraft\\tags\\function\\tick.json tickfuck.json")
            
        copyModFiles(getModFiles(loader, version, modReleaseNumber, _split=_split, print=print), _split=_split, print=print)
        
        isGood = launch(loader, version, _split=_split, print=print)
        successState = analyze.logFile(_split=_split, print=print)
        if not (successState and isGood):
            analyze.save(_split=_split)
    except:
        print(traceback.format_exc())
        analyze.save(_split=_split)
        return False
    
    os.system("ren .\\" + _automatedTest + "\\world\\datapacks\\data\\minecraft\\tags\\function\\tickfuck.json tick.json")
    
    return (successState and isGood)
        
def testCompleteVersion(modReleaseNumber, _split=-1, isBeta=False):

        _automatedTest = "automated_test" + (("_" + str(_split)) * (_split != -1))
        _analyze = analyze()
        print = _analyze.printReport
        
        os.system("mkdir \".\\" + _automatedTest + "\"")
        
        cases = {}
        
        if _split == -1:
            gameVersionDict = pytools.IO.getJson("game_versions.json")
            for loader in gameVersionDict:
                for baseVersion in gameVersionDict[loader]:
                    for version in gameVersionDict[loader][baseVersion]:
                        if loader not in cases:
                            cases[loader] = {}
                        
                        cases[loader][version] = runAutomatedTest(loader, version, modReleaseNumber=modReleaseNumber, isBeta=isBeta, _split=_split, print=print, analyze=_analyze)
        else:
            gameVersionDict = pytools.IO.getJson("game_versions.json")
            loader = list(gameVersionDict.keys())[_split]
            for baseVersion in gameVersionDict[loader]:
                for version in gameVersionDict[loader][baseVersion]:
                    if loader not in cases:
                        cases[loader] = {}
                    
                    cases[loader][version] = runAutomatedTest(loader, version, modReleaseNumber=modReleaseNumber, isBeta=isBeta, _split=_split, print=print, analyze=_analyze)
        
        return cases
    
doRun = False
isBeta = False
manualTest = False
version = ""
debugExisting = False
for arg in sys.argv:
    if arg == "--runTest":
        doRun = True
    if arg == "--beta":
        isBeta = True
    if arg.split("=")[0] == "--version":
        version = arg.split("=")[1]
    if arg.split("=")[0] == "--manualTest":
        manualTest = [arg.split("=")[1].split(",")[0], arg.split("=")[1].split(",")[1]]
    if arg == "--manualStop":
        flags.manualStop = True
    if arg == "--debugExisting":
        debugExisting = True
        
        
if doRun and (not manualTest):
    testCompleteVersion(version, isBeta=isBeta)
elif doRun and manualTest:
    runAutomatedTest(manualTest[0], manualTest[1], version, isBeta=isBeta, isDebug=debugExisting)