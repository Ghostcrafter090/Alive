import modules.pytools as pytools
import copy
import traceback
import json
import math

def versionParody(jsonData):
    
    typef = False
    
    if type(jsonData) == dict:
        for key in jsonData:
            if key != "count":
                if type(jsonData[key]) == dict:
                    jsonData[key] = versionParody(jsonData[key])
                elif type(jsonData[key]) == list:
                    jsonData[key] = versionParody(jsonData[key])
        
        if "condition" in jsonData:
            if "type" not in jsonData:
                jsonData["type"] = jsonData["condition"]

    else:
        try:
            i = 0
            while i < len(jsonData):
                if type(jsonData[i]) == dict:
                    jsonData[i] = versionParody(jsonData[i])
                elif type(jsonData[i]) == list:
                    jsonData[i] = versionParody(jsonData[i])
                    
                i = i + 1
        except:
            print(traceback.format_exc())
            
    return jsonData


class predicates:
    class volume:
        def make(locationCheck, px, py, pz, nx, ny, nz, condition):
            base = {
                "condition": condition,
                "terms": []
            }
            
            x = 0
            y = 0
            z = 0
            while (z - nz) < pz:
                y = 0
                while (y - ny) < py:
                    x = 0
                    while (x - nx) < px:
                        _term = copy.deepcopy(locationCheck)
                        _term["offsetX"] = x - nx
                        _term["offsetY"] = y - ny
                        _term["offsetZ"] = z - nz
                        
                        base["terms"].append(_term)
                        
                        x = x + 1
                        
                    y = y + 1
                    
                z = z + 1
                
            def _key(x):
                return ((x["offsetX"] ** 2) + (x["offsetY"] ** 2) + (x["offsetZ"] ** 2)) ** 0.5
            
            base["terms"] = sorted(base["terms"], key=_key)
            
            return base
            
def make():
    predicateConfig = pytools.IO.getJson("predicates.json")
    for predicate in predicateConfig["list"]:
        if predicate["type"] == "volume":
            _predicate = predicates.volume.make(predicate["predicate"], predicate["px"], predicate["py"], predicate["pz"], predicate["nx"], predicate["ny"], predicate["nz"], predicate["condition"])
            
        pytools.IO.saveFile(".\\gstools\\data\\gstools\\predicate\\" + predicate["name"] + ".json", json.dumps(versionParody(_predicate), indent=4))
        pytools.IO.saveFile(".\\gstools\\data\\gstools\\predicates\\" + predicate["name"] + ".json", json.dumps(versionParody(_predicate), indent=4))