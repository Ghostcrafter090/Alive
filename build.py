import modules.pytools as pytools
import compile

import subprocess
import os

import sys

import copy
import compileLootTables as lootTable

import modifyFeature as feature
import modifyStructure as structure

import traceback
import time
import modules.curseforge as curseforge

import modules.logManager as log

print = log.printLog

class flags:
    forceVersion = False

neoForgeTomlTemplate = """modLoader="javafml"
loaderVersion="[1,)"
license="Not specified"

[[mods]]
modId="<modId>"
version="<modVersion>"
displayName="<modDisplayName>"
displayURL="https://ko-fi.com/ghostcrafter090"
logoFile="logo.png"
credits="https://www.youtube.com/@SatosusProject"
authors="The Satosus Project"
description="<modDescription>"

# Start of user code block mod configuration
# End of user code block mod configuration


# Start of user code block custom mixins
# End of user code block custom mixins

[[dependencies.<modId>]]
    modId="neoforge"
    type="required"
    versionRange="[20.4.251,)"
    ordering="AFTER"
    side="BOTH"

[[dependencies.<modId>]]
    modId="minecraft"
    type="required"
    versionRange="[<gameVersions>]"
    ordering="AFTER"
    side="BOTH"
    
[[dependencies.<modId>]]
    modId="gstools"
    type="required"
    versionRange="[<modVersion>,)"
    ordering="AFTER"
    side="BOTH"
    
<weather2Compat>

# Start of user code block dependencies configuration
# End of user code block dependencies configuration"""

forgeTomlTemplate = """modLoader="javafml"
loaderVersion="[1,)"
license="Not specified"

[[mods]]
modId="<modId>"
version="<modVersion>"
displayName="<modDisplayName>"
displayURL="https://ko-fi.com/ghostcrafter090"
logoFile="logo.png"
credits="https://www.youtube.com/@SatosusProject"
authors="The Satosus Project"
description="<modDescription>"

# Start of user code block mod configuration
# End of user code block mod configuration

[[dependencies.<modId>]]
    modId="minecraft"
    mandatory=true
    versionRange="[<gameVersions>]"
    ordering="AFTER"
    side="BOTH"

[[dependencies.<modId>]]
    modId="gstools"
    mandatory=true
    versionRange="[<modVersion>,)"
    ordering="AFTER"
    side="BOTH"



# Start of user code block dependencies configuration
# End of user code block dependencies configuration"""

fabicModJsonTemplate = {
    "schemaVersion": 1,
    "id": "<modId>",
    "version": "<modVersion>",
    "name": "<modDisplayName>",
    "description": "<modDescription>",
    "authors": [
        "The Satosus Project"
    ],
    "contact": {
        "homepage": "https://ko-fi.com/ghostcrafter090",
        "sources": ""
    },
    "license": "Not specified",
    "icon": "logo.png",
    "environment": "*",
    "entrypoints": {
        "main": [
            "gstools.GstoolsMod"
        ],
        "client": [
            "gstools.GstoolsModClient"
        ]
    },
    "mixins": [
        "gstools.mixins.json"
    ],
    "depends": {
        "fabricloader": ">=0.17.2",
        "minecraft": "<gameVersions>",
        "java": ">=21",
        "fabric-api": "*",
        "gstools": ">=<modVersion>"
    }
}

fabricModMixinsTemplate = {
    "required": True,
    "package": "<modId>.mixin",
    "compatibilityLevel": "JAVA_21",
    "refmap": "<modId>.refmap.json",
    "mixins": [],
    "client": [],
    "injectors": {
        "defaultRequire": 1
    },
    "minVersion": "0.8.4"
}

fabricModRefmapTemplate = {
    "mappings": {
    },
    "data": {
    }
}

modIdToDisplayName = {
    "gstools": "Ghost Spectora Tools",
    "desire_paths": "Alive | Desire Paths",
    "dynamic_dirt": "Alive | Dynamic Dirt & Physics",
    "dynamic_monsters": "Alive | Dynamic Monsters",
    "enhanced_survival": "Alive | Enhanced Survival",
    "life_and_death": "Alive | Life & Death",
    "block_decay": "Alive | Advanced Block Decay",
    "dynamic_ecosystems": "Alive | Dynamic Ecosystems",
    "gothic_horror": "Alive | Gothic Horror",
    "ghosts_and_ghouls": "Alive | Ghosts And Ghouls",
    "undead_expanded": "Alive | Undead Expanded"
}

baseCompileVersions = [
    "1.20.4",
    "1.20.1",
    "1.19.4",
    "1.20"
]

fabricBaseRemovalVersions = [
    "1.21.9",
    "26.1",
    "26.2"
]

def getModIdJava(modId):
    return "".join((x[0].upper() + x[1:]) for x in modId.split("_"))

def compileBaseMod(modId, loader, gameVersion):
        print("     ---> Cleaning prior...")
        os.system("del \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\*\" /s /f /q")
        os.system("rmdir \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\" /s /q")
        os.system("mkdir \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\"")
        
        print("     ---> Cloning basemod...")
        os.system("xcopy \".\\basemod\\" + loader + "\\" + gameVersion + "\\srcbase\\*\" \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\" /e /c /y /i")
        
        print("     ---> Batch remaning...")
        os.system("rename \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\base\" \"" + modId + "\"")
        os.system("rename \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\BaseBaseMod.java\" \"" + getModIdJava(modId) + "Mod.java\"")
        
        javaFile = pytools.IO.getFile(".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\" + getModIdJava(modId) + "Mod.java")
        javaFile = javaFile.replace("<base>", modId)
        javaFile = javaFile.replace("<BaseBase>", getModIdJava(modId))
        
        pytools.IO.saveFile(".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\" + getModIdJava(modId) + "Mod.java", javaFile)

        print("     ---> Running gradle...")
        os.system("start /d \".\\basemod\\" + loader + "\\" + gameVersion + "\" /b /wait \"\" gradlew clean build")
        print("     ---> Unpacking generated jar file...")
        pytools.IO.unpack(".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\libs\\modid-1.0.jar", ".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\getbase")
        print("     ---> Injecting generated assets into temp dir...")
        os.system("xcopy \".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\getbase\\" + modId + "\\*\" \".\\temp_dir\\" + modId + "\" /e /c /y /i")
        
def compileDatapackIntoMod(folderName):
    print("Compiling datapack " + folderName + " into mod...")
    print("   > Detecting split versions...")
    splitVersionsToDelete = []
    gameVersionConfig = pytools.IO.getJson("game_versions.json")
    _gameVersionConfig = pytools.IO.getJson("game_versions.json")
    if folderName in gameVersionConfig["splits"]:
        for loader in gameVersionConfig["splits"][folderName]:
            for mcVersion in gameVersionConfig["splits"][folderName][loader]:
                for aVersion in gameVersionConfig[loader][mcVersion]:
                    if aVersion != mcVersion:
                        try:
                            _gameVersionConfig[loader][mcVersion].remove(aVersion)
                        except:
                            print(traceback.format_exc())
                        _gameVersionConfig[loader][aVersion] = [aVersion]
                        print("   --> Version to delete after: " + "gstools-" + loader + "-" + aVersion + ".jar")
                        os.system("copy \"" + "gstools-" + loader + "-" + mcVersion + ".jar\" \"gstools-" + loader + "-" + aVersion + ".jar\" /y")
                        splitVersionsToDelete.append("gstools-" + loader + "-" + aVersion + ".jar")
    if not len(splitVersionsToDelete):
        print("   --> Nothing to delete after.")
    
    if gameVersionConfig != _gameVersionConfig:
        print("   --> Copying modified game version cache...")
        pytools.IO.saveJson("game_versions.json", _gameVersionConfig)
        
        time.sleep(3)
    
    try:
        
        print("   > Beginning build block...")
        if folderName in modIdToDisplayName:
            jarFileList = subprocess.getoutput("dir \"gstools-*.jar\" /b").split('\n')
            for jarFile in jarFileList:
                print("   > Compiling for " + jarFile.split("gstools-")[1].split(".jar")[0] + "...")
                try:
                    if jarFile.split("-")[2].split(".jar")[0] in pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]]:
                        versionHistory = pytools.IO.getJson("version_history.json")
                        
                        if os.path.exists(".\\release\\" + folderName + "-" + jarFile.split("-")[1].split('-')[0] + "-" + jarFile.split("-")[2].split(".jar")[0] + "_" + ".".join(str(x) for x in versionHistory["current_version"]) + ".jar.zip"):
                            os.system("del \"" + ".\\release\\" + folderName + "-" + jarFile.split("-")[1].split('-')[0] + "-" + jarFile.split("-")[2].split(".jar")[0] + "_" + ".".join(str(x) for x in versionHistory["current_version"]) + ".jar.zip" + "\" /f /q")
                        
                        if not os.path.exists(".\\release\\" + folderName + "-" + jarFile.split("-")[1].split('-')[0] + "-" + jarFile.split("-")[2].split(".jar")[0] + "_" + ".".join(str(x) for x in versionHistory["current_version"]) + ".jar"):

                            print("   --> Cleaning temp directory...")
                            os.system("mkdir .\\temp_dir_empty")
                            for file in os.listdir(".\\temp_dir"):
                                if os.path.isdir(".\\temp_dir\\" + file):
                                    os.system("robocopy .\\temp_dir_empty .\\temp_dir\\" + file + " /mir /xd \"" + folderName.replace("_", "") + "\" /mt:16 /np /nfl /ndl")
                                else:
                                    os.system("del .\\temp_dir\\" + file + "/f /s /q")
                            print("   --> Unpacking base jar file...")
                            pytools.IO.unpack(jarFile, ".\\temp_dir")
                            print("   --> Copying compiled mcfunction assets...")
                            os.system("robocopy \"..\\datapacks\\" + folderName + "\\data\" \".\\temp_dir\\data\" * /mir /xd \"%cd%\\temp_dir\\data\\" + folderName.replace("_", "") + "\\functions\"")
                            print("   --> Injecting logo...")
                            os.system("copy \"alive_" + folderName + ".png\" \".\\temp_dir\\logo.png\" /y")
                            print("   --> Injecting config defaults...")
                            os.system("copy \"config.pyl\" \".\\temp_dir\\config.pyl\" /y")
                            
                            print("   --> Handling loader specifications...")
                            gameVersions = ",".join([pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0]][0], pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0]][-1]])
                            description = pytools.IO.getJson(folderName + "\\pack.mcmeta")["pack"]["description"]
                            
                            if gameVersions.split(",")[0] == gameVersions.split(",")[1]:
                                gameVersions = gameVersions.split(",")[0]
                            
                            if "-fabric-" in jarFile:
                                print("     ---> Init Fabric...")
                                fabricGameVersion = gameVersions.split(",")[0]
                                if len(gameVersions.split(",")) > 1:
                                    fabricGameVersion = "~" + fabricGameVersion
                                
                                fabricTemplate = copy.deepcopy(fabicModJsonTemplate)
                                fabricTemplate["id"] = folderName
                                fabricTemplate["version"] = ".".join(str(x) for x in versionHistory["current_version"])
                                fabricTemplate["name"] = modIdToDisplayName[folderName]
                                fabricTemplate["description"] = description
                                fabricTemplate["depends"]["minecraft"] = fabricGameVersion
                                fabricTemplate["depends"]["gstools"] = ">=" + (".".join(str(x) for x in versionHistory["current_version"]))
                                if (folderName != "gstools") or (jarFile.split("-")[2].split(".jar")[0] in fabricBaseRemovalVersions):
                                    fabricTemplate["mixins"][0] = folderName + ".mixins.json"
                                    
                                    fabricTemplate["entrypoints"]["main"] = []
                                    fabricTemplate["entrypoints"]["client"] = []
                                
                                pytools.IO.saveJson(".\\temp_dir\\fabric.mod.json", fabricTemplate)

                                if (folderName != "gstools") or (jarFile.split("-")[2].split(".jar")[0] in fabricBaseRemovalVersions):
                                    fabricMixinTemplate = fabricModMixinsTemplate
                                    fabricMixinTemplate["package"] = folderName + ".mixin"
                                    fabricMixinTemplate["refmap"] = folderName + ".refmap.json"
                                    pytools.IO.saveJson(".\\temp_dir\\" + folderName + ".mixins.json", fabricMixinTemplate)
                                    pytools.IO.saveJson(".\\temp_dir\\" + folderName + ".refmap.json", fabricModRefmapTemplate)
                                
                            elif "-forge-" in jarFile:
                                print("     ---> Init Forge...")
                                forgeTemplate = forgeTemplate = forgeTomlTemplate
                                forgeTemplate = forgeTemplate.replace("<modId>", folderName)
                                forgeTemplate = forgeTemplate.replace("<modVersion>", ".".join(str(x) for x in versionHistory["current_version"]))
                                forgeTemplate = forgeTemplate.replace("<modDisplayName>", modIdToDisplayName[folderName])
                                forgeTemplate = forgeTemplate.replace("<modDescription>", description)
                                forgeTemplate = forgeTemplate.replace("<gameVersions>", gameVersions)
                                pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", forgeTemplate)
                                
                            elif "-neoforge-" in jarFile:
                                print("     ---> Init Neoforge...")
                                neoforgeTemplate = neoForgeTomlTemplate
                                neoforgeTemplate = neoforgeTemplate.replace("<modId>", folderName)
                                neoforgeTemplate = neoforgeTemplate.replace("<modVersion>", ".".join(str(x) for x in versionHistory["current_version"]))
                                neoforgeTemplate = neoforgeTemplate.replace("<modDisplayName>", modIdToDisplayName[folderName])
                                neoforgeTemplate = neoforgeTemplate.replace("<modDescription>", description)
                                neoforgeTemplate = neoforgeTemplate.replace("<gameVersions>", gameVersions)
                                
                                for x in gameVersions.split(","):
                                    if x in curseforge.versionsSupportingWeather2:
                                        print("     ---> Weather2 Compat Requirment Detected.")
                                        neoforgeTemplate = neoforgeTemplate.replace("<weather2Compat>", """[[dependencies.<modId>]]
    modId="gstoolsweather2compat"
    type="required"
    versionRange="[1.0.0,)"
    ordering="AFTER"
    side="BOTH""").replace("<modId>", folderName)
                                        break
                                
                                neoforgeTemplate = neoforgeTemplate.replace("<weather2Compat>", "")
                            
                                if (int(jarFile.split("-")[2].split(".jar")[0].split('.')[1]) >= 21) or (int(jarFile.split("-")[2].split(".jar")[0].split('.')[0]) >= 21):
                                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\neoforge.mods.toml", neoforgeTemplate)
                                elif ((int(jarFile.split("-")[2].split(".jar")[0].split('.')[1]) == 20) and (int(jarFile.split("-")[2].split(".jar")[0].split('.')[2]) >= 6)):
                                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\neoforge.mods.toml", neoforgeTemplate)
                                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", neoforgeTemplate)
                                else:
                                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", neoforgeTemplate)
                            
                            if os.path.exists("..\\..\\..\\resourcepacks\\" + folderName):
                                print("   --> Injecting assets...")
                                os.system("robocopy \"..\\..\\..\\resourcepacks\\" + folderName + "\\assets\" \".\\temp_dir\\assets\" /mir /mt:16 /np /nfl /ndl")
                            
                            if folderName in ["enhanced_survival"]:
                                print("   --> Compiling Loot Tables...")
                                versionJars = pytools.net.getTextAPI("https://gist.githubusercontent.com/cliffano/77a982a7503669c3e1acb0a0cf6127e9/raw/b004d0413d312984a47c4963e8136b7fc83c0cf6/minecraft-server-jar-downloads.md").split("\n")
                                for aJarVersion in versionJars:
                                    aJarVersion = aJarVersion.split("|")
                                    aJarVersion[1] = aJarVersion[1].replace(" ", "")
                                    if aJarVersion[1] == pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0].split("_")[0]][-1]:
                                        print("     ---> Downloading vanilla jar...")
                                        pytools.net.download(aJarVersion[3].replace(" ", ""), ".\\_compiler_mcversion_jar.jar", 10000)
                                        print("     ---> Unpacking vanilla jar...")
                                        os.system("mkdir .\\temp_dir_2")
                                        pytools.IO.unpack(".\\_compiler_mcversion_jar.jar", ".\\temp_dir_2")
                                        print("     ---> Injecting mod with vanilla jar files...")
                                        os.system("robocopy \".\\temp_dir_2\\data\\minecraft\\loot_table\" \".\\temp_dir\\data\\minecraft\\loot_table\" /mir /mt:16 /np /nfl /ndl")
                                        os.system("robocopy \".\\temp_dir_2\\data\\minecraft\\loot_tables\" \".\\temp_dir\\data\\minecraft\\loot_tables\" /mir /mt:16 /np /nfl /ndl")
                                        print("     ---> Processing Loot Tables...")
                                        lootTable.processJsonFiles(".\\temp_dir\\data\\minecraft")
                                        print("     ---> Cleaning Up...")
                                        os.system("del \".\\temp_dir_2\\*\" /f /s /q")
                                        os.system("del \".\\_compiler_mcversion_jar.jar\" /f /s /q")
                                        print("     ---> Done.")
                                    
                            if folderName in ["block_decay"]:
                                print("   --> Compiling Structures And Features...")
                                versionJars = pytools.net.getTextAPI("https://gist.githubusercontent.com/cliffano/77a982a7503669c3e1acb0a0cf6127e9/raw/b004d0413d312984a47c4963e8136b7fc83c0cf6/minecraft-server-jar-downloads.md").split("\n")
                                for aJarVersion in versionJars:
                                    aJarVersion = aJarVersion.split("|")
                                    aJarVersion[1] = aJarVersion[1].replace(" ", "")
                                    if aJarVersion[1] == pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0]][-1]:
                                        if not os.path.exists(".\\.compile_cache\\" + folderName + "_" + aJarVersion[1] + "_" + "worldgen"):
                                            print("     ---> Downloading vanilla jar...")
                                            pytools.net.download(aJarVersion[3].replace(" ", ""), ".\\_compiler_mcversion_jar.jar", 10000)
                                            print("     ---> Unpacking vanilla jar...")
                                            os.system("mkdir .\\temp_dir_2")
                                            pytools.IO.unpack(".\\_compiler_mcversion_jar.jar", ".\\temp_dir_2")
                                            print("     ---> Injecting mod with vanilla jar files...")
                                            os.system("robocopy \".\\temp_dir_2\\data\\minecraft\\structure\" \".\\temp_dir\\data\\minecraft\\structure\" /mir /mt:16 /np /nfl /ndl")
                                            os.system("robocopy \".\\temp_dir_2\\data\\minecraft\\structures\" \".\\temp_dir\\data\\minecraft\\structures\" /mir /mt:16 /np /nfl /ndl")
                                            os.system("robocopy \".\\temp_dir_2\\data\\minecraft\\worldgen\" \".\\temp_dir\\data\\minecraft\\worldgen\" /mir /mt:16 /np /nfl /ndl")
                                            
                                            print("     ---> Processing Structures...")
                                            structure.processStructure(".\\temp_dir\\data\\minecraft")
                                            print("     ---> Processing Features...")
                                            feature.processStructure(".\\temp_dir\\data\\minecraft", version=aJarVersion[1])
                                            
                                            print("     ---> Caching compiled files...")
                                            os.system("robocopy \".\\temp_dir\\data\\minecraft\" \".\\.compile_cache\\" + folderName + "_" + aJarVersion[1] + "_" + "worldgen\" /mir /mt:16 /np /nfl /ndl")
                                            
                                            print("     ---> Cleaning Up...")
                                            os.system("del \".\\temp_dir_2\\*\" /f /s /q")
                                            os.system("del \".\\_compiler_mcversion_jar.jar\" /f /s /q")
                                            print("     ---> Done.")
                                        else:
                                            print("     ---> Prior Cache Detected. Injecting...")
                                            os.system("robocopy \".\\.compile_cache\\" + folderName + "_" + aJarVersion[1] + "_" + "worldgen\" \".\\temp_dir\\data\\minecraft\" /mir /mt:16 /np /nfl /ndl")
                                            print("     ---> Done.")
                        
                            if folderName != "gstools":
                                print("   --> Removing gstools jar files from non-gstools mod...")
                                os.system("del \".\\temp_dir\\gstools\\*\" /f /s /q")
                                os.system("del \".\\temp_dir\\org\\*\" /f /s /q")
                                os.system("rmdir \".\\temp_dir\\gstools\" /s /q")
                                os.system("rmdir \".\\temp_dir\\org\" /s /q")

                                if jarFile.split("-")[2].split(".jar")[0] in baseCompileVersions:
                                    print("   --> Base Mod Compile Requirment Detected! Compiling...")
                                    compileBaseMod(folderName, jarFile.split("-")[1].split('-')[0], jarFile.split("-")[2].split(".jar")[0])
                            else:
                                print("   --> Injecting gstools function tags...")
                                os.system("mkdir \".\\temp_dir\\data\\minecraft\\tags\\functions\"")
                                os.system("robocopy \".\\temp_dir\\data\\minecraft\\tags\\function\" \".\\temp_dir\\data\\minecraft\\tags\\functions\" /mir /mt:16 /np /nfl /ndl")
                            
                            print("   --> Injecting block tags...")
                            os.system("mkdir \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\blocks\"")
                            os.system("robocopy \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\block\" \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\blocks\" /mir /mt:16 /np /nfl /ndl")
                            
                            print("   --> Duplicating function folder for backported versions...")
                            os.system("mkdir \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\functions\"")
                            os.system("robocopy \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\function\" \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\functions\" /mir /mt:16 /np /nfl /ndl")
                            
                            print("   --> Packing into jar file...")
                            os.system("mkdir release")
                            pytools.IO.pack(".\\release\\" + folderName + "-" + jarFile.split("-")[1].split('-')[0] + "-" + jarFile.split("-")[2].split(".jar")[0] + "_" + ".".join(str(x) for x in versionHistory["current_version"]) + ".jar", ".\\temp_dir")
                            
                            print("   --> Cleaning Up...")
                            os.system("mkdir .\\temp_dir_empty")
                            for file in os.listdir(".\\temp_dir"):
                                if os.path.isdir(".\\temp_dir\\" + file):
                                    os.system("robocopy .\\temp_dir_empty .\\temp_dir\\" + file + " /mir /xd \"" + folderName.replace("_", "") + "\" /mt:16 /np /nfl /ndl")
                                else:
                                    os.system("del .\\temp_dir\\" + file + "/f /s /q")
                            print("   --> Done.")
                        else:
                            print("   --> Modfile already exists in build dir. Skipping...")
                except:
                    print(traceback.format_exc())
    except:
        print(traceback.format_exc())
        time.sleep(15)
    
    print("   > Renaming zip files to jar files...")
    try:
        zipFiles = subprocess.getoutput("dir .\\release\\*.zip /b").split("\n")
        for file in zipFiles:
            os.system("ren \".\\release\\" + file + "\" " + file.replace(".zip", ""))
    except:
        print(traceback.format_exc())
    
    print("   > Resetting to cached game versions config...")
    os.system("copy \"game_versions_cache.json\" \"game_versions.json\" /y")
    for aSplitVersion in splitVersionsToDelete:
        print("   --> Deleting split version " + aSplitVersion + "...")
        os.system("del \"" + aSplitVersion + "\" /f /q")
        
    print("   > Build Complete.")


doRun = False
confirm = "null"
continueBuild = False
skipCompile = False
compile.flags.compileEverything = True
for arg in sys.argv:
    print(arg)
    if arg == "--build":
        doRun = True
    if arg == "--continueBuild":
        continueBuild = True
    if arg == "--forceReset":
        os.system("del .\\release\\* /f /s /q")
    if arg == "--skipCompile":
        skipCompile = True
    if arg == "--notEverything":
        compile.flags.compileEverything = False
    if arg.split("=")[0] == "--forceVersion":
        print("test")
        confirm = input("Are you sure you want to manually change the version number? (New version number will be: `" + arg.split("=")[1] + "`) (Y/n) ? ")
        while not confirm in "Yn":
            confirm = input("INVALID! Try Again! (Y/n) ? ")
            
        if confirm == "Y":
            flags.forceVersion = arg.split("=")[1]

if doRun and (confirm != "n"):
    
    print("Init Mod Build...")
    
    versionHistory = pytools.IO.getJson("version_history.json")
    
    if flags.forceVersion:
        newVersion = list(int(x) for x in flags.forceVersion.split("."))
        newVersion[1] = newVersion[1] - 1
        
        versionHistory["current_version"] = newVersion
        
    if continueBuild:
        print("Continuing prior build instance...")
        versionHistory["current_version"][1] = versionHistory["current_version"][1] - 1
    
    print("Init resources...")
    for resource in subprocess.getoutput("dir \".\\resources\\*\" /b").split("\n"):
        os.system("robocopy \".\\resources\\" + resource + "\" \"..\\..\\..\\resourcepacks\\" + resource + "\" * /mir")
    
    if not skipCompile:
        print("Compiling datapacks...")
        for datapack in compile.getDatapacks():
            compile.compileDatapack(datapack)
    else:
        print("Skipping datapack compile...")
    
    print("Adjusting current version as needed...")
    versionHistory["current_version"][1] = versionHistory["current_version"][1] + 1
    versionHistory["current_version"][2] = 0
    
    print("Appending to changelog...")
    if (".".join(str(x) for x in versionHistory["current_version"][0:2])) not in versionHistory["history"]:
        versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])] = []
    if not compile.flags.compileEverything:
        versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])].extend(compile.datapackCompiler.globals.changedFiles)
    pytools.IO.saveJson(".\\version_history.json", versionHistory)
    
    print("Begin Complete Build Block...")
    os.system("mkdir releases")
    
    copyOutput = ""
    if os.path.exists(".\\release\\release.json"):
        print("Cleaning mess from prior build...")
        priorVersionInfo = pytools.IO.getJson(".\\release\\release.json")
        os.system("mkdir .\\releases\\" + priorVersionInfo["releaseVersion"])
        copyOutput = subprocess.getoutput("xcopy \".\\release\\*\" \".\\releases\\" + priorVersionInfo["releaseVersion"] + "\" /e /c /y")
        if "Insufficient disk space" not in copyOutput:
            os.system("del \".\\release\\*\" /f /s /q")
    
    if "Insufficient disk space" not in copyOutput:
        print("Init Build Per Datapack Compile Block...")
        for datapack in compile.getDatapacks():
            compileDatapackIntoMod(datapack)
        
        print("Generating release.json...")
        jsonVersionInfo = {
            "releaseVersion": ".".join(str(x) for x in versionHistory["current_version"]),
            "releaseHistory": versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])]
        }
        
        print("Injecting release.json...")
        pytools.IO.saveJson(".\\release\\release.json", jsonVersionInfo)
        print("Cleaning up...")
        os.system("mkdir .\\releases\\" + jsonVersionInfo["releaseVersion"])
        copyOutput = subprocess.getoutput("xcopy \".\\release\\*\" \".\\releases\\" + jsonVersionInfo["releaseVersion"] + "\" /e /c /y")
        if "Insufficient disk space" not in copyOutput:
            os.system("del \".\\release\\*\" /f /s /q")
            
        print("Done.")
        
        os.system("git add *")
        os.system("git commit -m \"Major Release " + ".".join(str(x) for x in versionHistory["current_version"]) + "\"")
        os.system("git push")
        