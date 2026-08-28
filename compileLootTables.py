import modules.pytools as pytools
import subprocess
import json

def walkJson(jsonData):
    
    typef = False
    
    if type(jsonData) == dict:
        for key in jsonData:
            if type(jsonData[key]) == dict:
                jsonData[key] = walkJson(jsonData[key])
            elif type(jsonData[key]) == list:
                jsonData[key] = walkJson(jsonData[key])

        if "type" in jsonData:
            if jsonData["type"] == "minecraft:item":
                if "weight" in jsonData:
                    if "quality" not in jsonData:
                        jsonData["quality"] = jsonData["weight"]
                        
        if "bonus_rolls" in jsonData:
            if jsonData["bonus_rolls"] == 0:
                jsonData["bonus_rolls"] = 1

    else:
        i = 0
        while i < len(jsonData):
            if type(jsonData[i]) == dict:
                jsonData[i] = walkJson(jsonData[i])
            elif type(jsonData[i]) == list:
                jsonData[i] = walkJson(jsonData[i])
                
            i = i + 1
            
    return jsonData

def processJsonFiles(path):
    files = subprocess.getoutput("dir /s /b \"" + path + "\\*.json\"").split("\n")

    for file in files:
        try:
            print("    --> " + file.split("\\data\\minecraft\\")[1])
        except:
            pass
        jsonData = pytools.IO.getJson(file)
        pytools.IO.saveFile(file, json.dumps(walkJson(jsonData), indent=4))
            
            
                
            
