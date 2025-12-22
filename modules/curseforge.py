import modules.pytools as pytools

import requests
import json
import os

import time

class globals:
    apiKey = pytools.IO.getJson("curseforge_api.json")["key"]

    versionIdBlacklist = pytools.IO.getJson("version_id_blacklist.json")["list"]
    
projectIdDict = {
    "gstools": "1404020",
    "desire_paths": "1405409",
    "dynamic_dirt": "1405421",
    "dynamic_monsters": "1405432",
    "enhanced_survival": "1405437",
    "life_and_death": "1405446"
}

def getGameVersions(loader, version):
    versionInfo = pytools.IO.getJson("game_versions.json")
    curseforgeData = pytools.net.getJsonAPI("https://minecraft.curseforge.com/api/game/versions", customHeaders=[["X-Api-Token", globals.apiKey]])
    versionIds = []
    for aVersion in versionInfo[loader][version]:
        for aVersionData in curseforgeData:
            if aVersionData["name"] == aVersion:
                if aVersionData["id"] not in versionIds:
                    if aVersionData["id"] not in globals.versionIdBlacklist:
                        versionIds.append(aVersionData["id"])
                print(aVersionData)
            elif aVersionData["name"].lower() == loader.lower():
                if aVersionData["id"] not in versionIds:
                    if aVersionData["id"] not in globals.versionIdBlacklist:
                        versionIds.append(aVersionData["id"])
                print(aVersionData)

    return versionIds

def uploadFile(path, project, loader, version, displayName, changeLog):
    # Configuration variables
    API_TOKEN = globals.apiKey
    PROJECT_ID = projectIdDict[project] # Example: 12345
    FILE_PATH = path
    GAME_VERSION = getGameVersions(loader, version) # The Minecraft version, for example
    RELEASE_TYPE = "release" # Options: "release", "beta", or "alpha"
    DISPLAY_NAME = displayName # Optional, but recommended
    CHANGELOG = changeLog # A description of changes

    # API Endpoint URL
    url = f"https://www.curseforge.com/api/projects/{PROJECT_ID}/upload-file"

    # Metadata for the upload (as a Python dictionary, later converted to JSON)
    metadata = {
        "changelog": CHANGELOG,
        "displayName": DISPLAY_NAME,
        "gameVersions": GAME_VERSION,
        "releaseType": RELEASE_TYPE,
        "relations": {
            "projects": [
                {
                    "slug": "gstools",
                    "projectID": int(projectIdDict["gstools"]),
                    "type": "requiredDependency"
                }
            ]    
        } # Use this for required mods or dependencies
    }
    
    # Headers for authentication
    headers = {
        "X-Api-Token": API_TOKEN
    }

    # Open the file in binary read mode
    try:
        uploadFailed = True
        while uploadFailed:
            with open(FILE_PATH, 'rb') as f:
                files = {
                    'file': (path.split("\\")[-1], f, 'application/jar'), # Adjust MIME type if using a zip file
                    'metadata': (None, json.dumps(metadata), 'application/json')
                }

                # Send the POST request
                response = requests.post(url, headers=headers, files=files)

                # Check the response status
                if response.status_code == 200:
                    print(f"Mod file uploaded successfully! Response: {response.json()}")
                    uploadFailed = False
                else:
                    print(f"Upload failed. Status code: {response.status_code}")
                    print(f"Response body: {response.text}")
                    jsonData = json.loads(response.text)
                    if jsonData["errorCode"] == 1009:
                        metadata["gameVersions"].remove(int(jsonData["errorMessage"].split("version ID: ")[1].split(" ")[0]))
                        globals.versionIdBlacklist.append(int(jsonData["errorMessage"].split("version ID: ")[1].split(" ")[0]))
                        pytools.IO.saveJson("version_id_blacklist.json", {
                            "list": globals.versionIdBlacklist
                        })
                    if jsonData["errorCode"] == 500:
                        uploadFailed = False
                    
            time.sleep(1)

    except FileNotFoundError:
        print(f"Error: File not found at {FILE_PATH}")
    except Exception as e:
        print(f"An error occurred: {e}")