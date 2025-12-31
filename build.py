import modules.pytools as pytools
import compile

import subprocess
import os

import sys

import copy

class flags:
    forceVersion = False

neoForgeTomlTemplate = """modLoader="javafml"
loaderVersion="[1,)"
license="Not specified"

[[mods]]
modId="<modId>"
version="<modVersion>"
displayName="<modDisplayName>"
displayURL="https://satosus.ddns.net"
logoFile="logo.png"
credits="https://www.youtube.com/@SatosusProject"
authors="The Satosus Project"
description="<modDescription>"

# Start of user code block mod configuration
# End of user code block mod configuration


# Start of user code block custom mixins
# End of user code block custom mixins

[[dependencies.gstools]]
    modId="neoforge"
    type="required"
    versionRange="[20.4.251,)"
    ordering="AFTER"
    side="BOTH"

[[dependencies.gstools]]
    modId="minecraft"
    type="required"
    versionRange="[<gameVersions>]"
    ordering="AFTER"
    side="BOTH"
    
[[dependencies.gstools]]
    modId="gstools"
    type="required"
    versionRange="[<modVersion>,)"
    ordering="AFTER"
    side="BOTH"

# Start of user code block dependencies configuration
# End of user code block dependencies configuration"""

forgeTomlTemplate = """modLoader="javafml"
loaderVersion="[1,)"
license="Not specified"

[[mods]]
modId="<modId>"
version="<modVersion>"
displayName="<modDisplayName>"
displayURL="https://satosus.ddns.net"
logoFile="logo.png"
credits="https://www.youtube.com/@SatosusProject"
authors="The Satosus Project"
description="<modDescription>"

# Start of user code block mod configuration
# End of user code block mod configuration

[[dependencies.gstools]]
    modId="minecraft"
    mandatory=true
    versionRange="[<gameVersions>]"
    ordering="AFTER"
    side="BOTH"

[[dependencies.gstools]]
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
        "homepage": "https://satosus.ddns.net",
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
    "life_and_death": "Alive | Life & Death"
}

baseCompileVersions = [
    "1.20.4",
    "1.20.1",
    "1.19.4"
]

fabricBaseRemovalVersions = [
    "1.21.9"
]

def getModIdJava(modId):
    return "".join((x[0].upper() + x[1:]) for x in modId.split("_"))

def compileBaseMod(modId, loader, gameVersion):
        os.system("del \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\*\" /s /f /q")
        os.system("rmdir \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\" /s /q")
        os.system("mkdir \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\"")
        
        os.system("xcopy \".\\basemod\\" + loader + "\\" + gameVersion + "\\srcbase\\*\" \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\" /e /c /y /i")
        
        os.system("rename \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\base\" \"" + modId + "\"")
        os.system("rename \".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\BaseBaseMod.java\" \"" + getModIdJava(modId) + "Mod.java\"")
        
        javaFile = pytools.IO.getFile(".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\" + getModIdJava(modId) + "Mod.java")
        javaFile = javaFile.replace("<base>", modId)
        javaFile = javaFile.replace("<BaseBase>", getModIdJava(modId))
        
        pytools.IO.saveFile(".\\basemod\\" + loader + "\\" + gameVersion + "\\src\\main\\java\\" + modId + "\\" + getModIdJava(modId) + "Mod.java", javaFile)

        os.system("start /d \".\\basemod\\" + loader + "\\" + gameVersion + "\" /b /wait \"\" gradlew clean build")
        pytools.IO.unpack(".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\libs\\modid-1.0.jar", ".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\getbase")
        
        os.system("xcopy \".\\basemod\\" + loader + "\\" + gameVersion + "\\build\\getbase\\" + modId + "\\*\" \".\\temp_dir\\" + modId + "\" /e /c /y /i")
        
def compileDatapackIntoMod(folderName):
    if folderName in modIdToDisplayName:
        jarFileList = subprocess.getoutput("dir \"gstools-*.jar\" /b").split('\n')
        for jarFile in jarFileList:
            print(jarFile)
            os.system("del .\\temp_dir\* /f /s /q")
            pytools.IO.unpack(jarFile, ".\\temp_dir")
            os.system("robocopy \"..\\datapacks\\" + folderName + "\\data\" \".\\temp_dir\\data\" * /mir")
            os.system("copy \"alive_" + folderName + ".png\" \".\\temp_dir\\logo.png\" /y")
            
            versionHistory = pytools.IO.getJson("version_history.json")
            gameVersions = ",".join([pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0]][0], pytools.IO.getJson("game_versions.json")[jarFile.split("-")[1].split('-')[0]][jarFile.split("-")[2].split(".jar")[0]][-1]])
            description = pytools.IO.getJson(folderName + "\\pack.mcmeta")["pack"]["description"]
            
            if "-fabric-" in jarFile:
                
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
                forgeTemplate = forgeTemplate = forgeTomlTemplate
                forgeTemplate = forgeTemplate.replace("<modId>", folderName)
                forgeTemplate = forgeTemplate.replace("<modVersion>", ".".join(str(x) for x in versionHistory["current_version"]))
                forgeTemplate = forgeTemplate.replace("<modDisplayName>", modIdToDisplayName[folderName])
                forgeTemplate = forgeTemplate.replace("<modDescription>", description)
                forgeTemplate = forgeTemplate.replace("<gameVersions>", gameVersions)
                pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", forgeTemplate)
                
            elif "-neoforge-" in jarFile:
                neoforgeTemplate = neoForgeTomlTemplate
                neoforgeTemplate = neoforgeTemplate.replace("<modId>", folderName)
                neoforgeTemplate = neoforgeTemplate.replace("<modVersion>", ".".join(str(x) for x in versionHistory["current_version"]))
                neoforgeTemplate = neoforgeTemplate.replace("<modDisplayName>", modIdToDisplayName[folderName])
                neoforgeTemplate = neoforgeTemplate.replace("<modDescription>", description)
                neoforgeTemplate = neoforgeTemplate.replace("<gameVersions>", gameVersions)
            
                if (int(jarFile.split("-")[2].split(".jar")[0].split('.')[1]) >= 21):
                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\neoforge.mods.toml", neoforgeTemplate)
                elif ((int(jarFile.split("-")[2].split(".jar")[0].split('.')[1]) == 20) and (int(jarFile.split("-")[2].split(".jar")[0].split('.')[2]) >= 6)):
                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\neoforge.mods.toml", neoforgeTemplate)
                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", neoforgeTemplate)
                else:
                    pytools.IO.saveFile(".\\temp_dir\\META-INF\\mods.toml", neoforgeTemplate)
            
            if os.path.exists("..\\..\\..\\resourcepacks\\" + folderName):
                os.system("xcopy \"..\\..\\..\\resourcepacks\\" + folderName + "\\assets\\*\" \".\\temp_dir\\assets\" /e /c /y")
            
            if folderName != "gstools":
                os.system("del \".\\temp_dir\\gstools\\*\" /f /s /q")
                os.system("rmdir \".\\temp_dir\\gstools\" /s /q")
            
                if jarFile.split("-")[2].split(".jar")[0] in baseCompileVersions:
                    compileBaseMod(folderName, jarFile.split("-")[1].split('-')[0], jarFile.split("-")[2].split(".jar")[0])
            else:
                os.system("mkdir \".\\temp_dir\\data\\minecraft\\tags\\functions\"")
                os.system("xcopy \".\\temp_dir\\data\\minecraft\\tags\\function\\*\" \".\\temp_dir\\data\\minecraft\\tags\\functions\" /e /c /y /i")
            
            
            os.system("mkdir \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\blocks\"")
            os.system("xcopy \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\block\\*\" \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\tags\\blocks\" /e /c /y /i")
            
            os.system("mkdir \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\functions\"")
            os.system("xcopy \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\function\\*\" \".\\temp_dir\\data\\" + folderName.replace("_", "") + "\\functions\" /e /c /y /i")
            
            os.system("mkdir release")
            pytools.IO.pack(".\\release\\" + folderName + "-" + jarFile.split("-")[1].split('-')[0] + "-" + jarFile.split("-")[2].split(".jar")[0] + "_" + ".".join(str(x) for x in versionHistory["current_version"]) + ".jar", ".\\temp_dir")
            
            os.system("del .\\temp_dir\* /f /s /q")
            
        zipFiles = subprocess.getoutput("dir .\\release\\*.zip /b").split("\n")
        for file in zipFiles:
            os.system("ren \".\\release\\" + file + "\" " + file.replace(".zip", ""))

doRun = False
confirm = "null"
compile.flags.compileEverything = True
for arg in sys.argv:
    print(arg)
    if arg == "--build":
        doRun = True
    if arg == "--forceReset":
        os.system("del .\\release\\* /f /s /q")
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
    
    versionHistory = pytools.IO.getJson("version_history.json")
    
    if flags.forceVersion:
        newVersion = list(int(x) for x in flags.forceVersion.split("."))
        newVersion[1] = newVersion[1] - 1
        
        versionHistory["current_version"] = newVersion
    
    for resource in subprocess.getoutput("dir \".\\resources\\*\" /b").split("\n"):
        os.system("robocopy \".\\resources\\" + resource + "\" \"..\\..\\..\\resourcepacks\\" + resource + "\" * /mir")
    
    for datapack in compile.getDatapacks():
        compile.compileDatapack(datapack)
    
    versionHistory["current_version"][1] = versionHistory["current_version"][1] + 1
    versionHistory["current_version"][2] = 0
    
    if (".".join(str(x) for x in versionHistory["current_version"][0:2])) not in versionHistory["history"]:
        versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])] = []
    if not compile.flags.compileEverything:
        versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])].extend(compile.datapackCompiler.globals.changedFiles)
    pytools.IO.saveJson(".\\version_history.json", versionHistory)
    
    os.system("mkdir releases")
    
    if os.path.exists(".\\release\\release.json"):
        priorVersionInfo = pytools.IO.getJson(".\\release\\release.json")
        os.system("mkdir .\\releases\\" + priorVersionInfo["releaseVersion"])
        os.system("xcopy \".\\release\\*\" \".\\releases\\" + priorVersionInfo["releaseVersion"] + "\" /e /c /y")
        os.system("del \".\\release\\*\" /f /s /q")
    
    for datapack in compile.getDatapacks():
        compileDatapackIntoMod(datapack)
    
    jsonVersionInfo = {
        "releaseVersion": ".".join(str(x) for x in versionHistory["current_version"]),
        "releaseHistory": versionHistory["history"][".".join(str(x) for x in versionHistory["current_version"][0:2])]
    }
    
    pytools.IO.saveJson(".\\release\\release.json", jsonVersionInfo)
    os.system("mkdir .\\releases\\" + jsonVersionInfo["releaseVersion"])
    os.system("xcopy \".\\release\\*\" \".\\releases\\" + jsonVersionInfo["releaseVersion"] + "\" /e /c /y")
    os.system("del \".\\release\\*\" /f /s /q")
    
    os.system("git add *")
    os.system("git commit -m \"Major Release " + ".".join(str(x) for x in versionHistory["current_version"]) + "\"")
    os.system("git push")
        