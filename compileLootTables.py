import modules.pytools as pytools
import modules.logManager as log
import subprocess
import json
import traceback
import random
import math

print = log.printLog

class randomCalc:
    
    cache = {}
    
    def getSumRandomZeroClamped(x, y, z):
        i = z
        out = 0
        while i > 0:
            randf = random.randint(x, y)
            if randf < 0:
                randf = 0
            out = out + randf
            i = i - 1
            
        return out
    
    def getClosestWeightOnRoll(x, y, z):
        if str([x, y, z]) in randomCalc.cache:
            return randomCalc.cache[str([x, y, z])]
        
        defaultValue = randomCalc.getSumRandomZeroClamped(x, y, 10000)
        
        newValue = randomCalc.getSumRandomZeroClamped(x - 1, y, 10000 * z)
        f = 2
        while newValue > defaultValue:
            newValue = randomCalc.getSumRandomZeroClamped(x - f, y, 10000 * z)
            f = f + 1
        
        if math.fabs(defaultValue - randomCalc.getSumRandomZeroClamped(x - f + 2, y, 10000 * z)) < math.fabs(defaultValue - newValue):
            out = [(x - f) + 2, y]
        else:
            out = [(x - f) + 1, y]
        
        randomCalc.cache[str([x, y, z])] = out
        
        print("        ---> " + str([x, y, z]) + " -> " + str(out))
        
        pytools.IO.saveJson("closestWeightOnRollCache.json", randomCalc.cache)
        
        return out
    
randomCalc.cache = pytools.IO.getJson("closestWeightOnRollCache.json")
if type(randomCalc.cache) != dict:
    randomCalc.cache = {}

def walkJson(jsonData):
    
    typef = False
    
    if type(jsonData) == dict:
        for key in jsonData:
            if key != "count":
                if type(jsonData[key]) == dict:
                    jsonData[key] = walkJson(jsonData[key])
                elif type(jsonData[key]) == list:
                    jsonData[key] = walkJson(jsonData[key])
                    
        if "function" in jsonData:
            if jsonData["function"] == "minecraft:set_count":
                if "count" in jsonData:
                    if type(jsonData["count"]) == dict:
                        if jsonData["count"]["type"] == "minecraft:uniform":
                            j = randomCalc.getClosestWeightOnRoll(jsonData["count"]["min"], jsonData["count"]["max"], 5)
                            jsonData["count"]["min"] = j[0]
                            jsonData["count"]["max"] = j[1]
                    elif type(jsonData["count"]) in [int, float]:
                        if jsonData["count"] >= 5:
                            jsonData["count"] = (jsonData["count"] / 5)
                        else:
                            j = randomCalc.getClosestWeightOnRoll(jsonData["count"], jsonData["count"], 5)
                            
                            jsonData["count"] = {
                                "type": "minecraft:uniform",
                                "max": j[1],
                                "min": j[0]
                            }

        if "type" in jsonData:
            if jsonData["type"] == "minecraft:item":
                if "weight" in jsonData:
                    if "quality" not in jsonData:
                        jsonData["quality"] = int((jsonData["weight"] / 1.8) - (1.075 ** jsonData["weight"])) + 1
                        if jsonData["quality"] < 1:
                            jsonData["quality"] = 1
        
        if "bonus_rolls" in jsonData:
            if jsonData["bonus_rolls"] == 0:
                jsonData["bonus_rolls"] = 1
            else:
                jsonData["bonus_rolls"] = jsonData["bonus_rolls"] * 5
        
        if "rolls" in jsonData:
            if type(jsonData["rolls"]) in [int, float]:
                jsonData["rolls"] = jsonData["rolls"] * 5

    else:
        try:
            i = 0
            while i < len(jsonData):
                if type(jsonData[i]) == dict:
                    jsonData[i] = walkJson(jsonData[i])
                elif type(jsonData[i]) == list:
                    jsonData[i] = walkJson(jsonData[i])
                    
                i = i + 1
        except:
            print(traceback.format_exc())
            
    return jsonData

def processJsonFiles(path):
    files = subprocess.getoutput("dir /s /b \"" + path + "\\*.json\"").split("\n")

    for file in files:
        try:
            print("    --> " + file.split("\\data\\minecraft\\")[1])
        except:
            pass
        jsonData = pytools.IO.getJson(file)
        if "'count':" in str(jsonData):
            if "minecraft:block" not in str(jsonData):
                try:
                    pytools.IO.saveFile(file, json.dumps(walkJson(jsonData), indent=4))
                except:
                    print(traceback.format_exc())
            
            
                
            
