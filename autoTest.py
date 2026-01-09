import modules.pytools as pytools
import os
import subprocess
import time
import traceback

def getModFiles(loader, version, modReleaseNumber):
    modFiles = []
    gameVersionDict = pytools.IO.getJson("game_versions.json")
    
    for file in subprocess.getoutput("dir \".\\releases\\" + modReleaseNumber + "\\*.jar\" /b").split('\n'):
        projectName = file.split("-")[0]
        loaderVersion = file.split("-")[1]
        gameVersion = file.split("-")[2].split("_")[0]
        modVersion = file.split("-")[2].split("_")[1].split(".jar")[0]
        if loaderVersion == loader:
            for aVersion in gameVersionDict[loader]:
                if version in gameVersionDict[loader][aVersion]:
                    if gameVersion == aVersion:
                        print(".\\releases\\" + modReleaseNumber + "\\" + file)
                        modFiles.append(".\\releases\\" + modReleaseNumber + "\\" + file)
                
    return modFiles

def setupServer(loader, version):
    os.system("del .\\automated_test\\* /f /s /q")
    os.chdir(".\\automated_test")
    
    if loader == "neoforge":
        neoforgeVersions = pytools.net.getJsonAPI("https://maven.neoforged.net/api/maven/versions/releases/net%2Fneoforged%2Fneoforge")
        for x in neoforgeVersions["versions"]:
            if (x.split(".")[0] == version.split(".")[1]) and (x.split(".")[1] == version.split(".")[2]):
                neoforgeVersion = x
        os.system("curl -O https://maven.neoforged.net/releases/net/neoforged/neoforge/<neoforgeVersion>/neoforge-<neoforgeVersion>-installer.jar".replace("<neoforgeVersion>", neoforgeVersion))
        for x in os.listdir():
            if (".jar" in x) and ("neoforge-" in x):
                os.system("java -jar " + x + " --installServer")
                
        runFile = pytools.IO.getFile("run.bat")
        runFile = runFile.replace("java ", "..\\java\\Jre_21\\bin\\alive_automated_test ")
        runFile = runFile.replace("pause", "")
        pytools.IO.saveFile("run.bat", runFile)
                
    if loader == "fabric": 
        os.system("curl -OJ https://meta.fabricmc.net/v2/versions/loader/<version>/0.18.4/1.1.1/server/jar".replace("<version>", version))
        for x in os.listdir():
            if (".jar" in x) and ("fabric" in x):
                os.system("..\\java\\Jre_21\\bin\\java -Xmx2G -jar " + x + " nogui")
    if loader == "forge":
        forgeVersion = pytools.net.getJsonAPI("https://mc-versions-api.net/api/forge?detailed=true&version=<version>&version=<version>".replace("<version>", version))["result"][0]["version"]
        os.system("curl -O https://maven.minecraftforge.net/net/minecraftforge/forge/<version>-<forgeVersion>/forge-<version>-<forgeVersion>-installer.jar".replace("<version>", version).replace("<forgeVersion>", forgeVersion))
        for x in os.listdir():
            if (".jar" in x) and ("forge-" in x):
                os.system("java -jar " + x + " --installServer")
        
        runFile = pytools.IO.getFile("run.bat")
        runFile = runFile.replace("java ", "..\\java\\Jre_21\\bin\\alive_automated_test ")
        runFile = runFile.replace("pause", "")
        pytools.IO.saveFile("run.bat", runFile)
    
    pytools.IO.saveFile("eula.txt", """#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://aka.ms/MinecraftEULA).
#Fri Jan 09 14:04:31 AST 2026
eula=true
""")            
    
    os.system("xcopy ..\server.properties . /c /y")
    
    os.chdir("..")
    
def copyModFiles(modFiles):
    for file in modFiles:
        os.system("xcopy \"" + file + "\" .\\automated_test\\mods /c /y")
        
    os.system("mkdir \".\\automated_test\\world\"")
    os.system("mkdir \".\\automated_test\\world\\datapacks\"")
    os.system("mkdir \".\\automated_test\\world\\datapacks\\test_datapack\"")
    os.system("xcopy \".\\test_datapack\" \".\\automated_test\\world\\datapacks\\test_datapack\" /e /c /y")
        
def launch(loader):
    os.chdir(".\\automated_test")
    os.system("copy \"..\\java\\Jre_21\\bin\\java.exe\" \"..\\java\\Jre_21\\bin\\alive_automated_test.exe\" /y")
    if loader == "fabric":
        for x in os.listdir():
            if (".jar" in x) and ("fabric" in x):
                os.system("start /b \"\" ..\\java\\Jre_21\\bin\\alive_automated_test.exe -Xmx2G -jar " + x + " nogui")
    else:
        os.system("start /b \"\" cmd.exe /c run.bat")
    
    try:
        i = 0
        while ("[framework_marker]" not in str(pytools.IO.getFile(".\\logs\\latest.log"))) and (i < 60):
            print("testing_watchdog_waiting")
            i = i + 1
            time.sleep(1)
        
        if i < 60:
            i = 0
            print("Testing Started...")
            while ("[framework_testing_ended]" not in str(pytools.IO.getFile(".\\logs\\latest.log"))) and (i < 240):
                print("testing_watchdog_loop")
                i = i + 1
                time.sleep(1)
            
            if i >= 240:
                print("WATCHDOG_LOOP_TIMEOUT_REACHED! ABORTING...")
        else:
            print("WATCHDOG_WAIT_TIMEOUT_REACHED! ABORTING...")
    except:
        print(traceback.format_exc())
    
    os.system("taskkill /f /im alive_automated_test.exe")
    os.chdir("..")
    
def runAutomatedTest(loader, version, modReleaseNumber, isBeta=False):
    setupServer(loader, version)
    copyModFiles(getModFiles(loader, version, modReleaseNumber))
    if isBeta:
        os.system("xcopy \"..\\datapacks\\*\" .\\automated_test\\world\\datapacks /e /c /y")
        os.system("del .\\automated_test\\world\\datapacks\\data\\minecraft\\tags\\function\\tick.json /f /q")
    launch(loader)
    
