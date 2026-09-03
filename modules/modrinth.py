import modules.pytools as pytools
import modules.curseforge as curseforge
import modules.pymodrinth as modrinth
from pathlib import Path
import requests
import json
import os
import traceback

import time

class globals:
    apiKey = pytools.IO.getJson("upload_api.json")["modrinth"]["key"]
    username = pytools.IO.getJson("upload_api.json")["modrinth"]["username"]
    email = pytools.IO.getJson("upload_api.json")["modrinth"]["email"]
    

    versionIdBlacklist = pytools.IO.getJson("version_id_blacklist.json")["list"]
    
projectIdDict = {
    "gstools": "YRiXU1xW",
    "desire_paths": "VjkzP7ae",
    "dynamic_dirt": "QQ3akBeb",
    "dynamic_monsters": "OHvWoGSm",
    "enhanced_survival": "803IlacF",
    "life_and_death": "mmSVM1FA",
    "block_decay": "5wA59uoz",
    "dynamic_ecosystems": "OkEKkza6"
}

def uploadFile(path, project, loader, version, projectVersion, displayName, changeLog):
    # Configuration variables
    API_TOKEN = globals.apiKey
    PROJECT_ID = projectIdDict[project] # Example: 12345
    FILE_PATH = path
    GAME_VERSION = curseforge.getGameVersions(loader, version, folderName=project) # The Minecraft version, for example
    RELEASE_TYPE = "release" # Options: "release", "beta", or "alpha"
    DISPLAY_NAME = displayName # Optional, but recommended
    CHANGELOG = changeLog # A description of changes

    # API Endpoint URL
    url = "https://staging-api.modrinth.com/v2/version"

    # Metadata for the upload (as a Python dictionary, later converted to JSON)

    gameVersions = list(GAME_VERSION.values())

    i = 0
    while i < len(gameVersions):
        if gameVersions[i].lower() == loader.lower():
            gameVersions.pop(i)
            i = i - 1
        
        elif gameVersions[i].lower() == "server":
            gameVersions.pop(i)
            i = i - 1
            
        elif gameVersions[i].lower() == "client":
            gameVersions.pop(i)
            i = i - 1
        
        i = i + 1
    
    metadata = {
        "name": DISPLAY_NAME,                # The display name of your file release
        "version_number": projectVersion,              # Follow semantic versioning standards
        "version_title": DISPLAY_NAME + " " + version,
        "changelog": CHANGELOG, # Markdown formatted changelog text
        "dependencies": [
            {
                "project_id": projectIdDict["gstools"],
                "version_id": version,
                "dependency_type": "required"
            }
        ],                     # Array of dependency rules if needed
        "game_versions": gameVersions,     # Supported target Minecraft versions
        "version_type": "release",              # Valid options: "release", "beta", "alpha"
        "loaders": [loader],         # Supported mod loaders
        "project_id": projectIdDict[project],        # Found under project Technical Information
        "featured": True,                       # Dictates if this becomes the primary file
        "file_parts": ["file"]      # Keys matching the file keys provided below
    }
    
    headers = {
        "Authorization": API_TOKEN,  # Do not prepend "Bearer ", pass raw token directly
        "User-Agent": globals.username + "/" + project + "/" + projectVersion + " (" + globals.email + ")" # Modrinth requests an identifying User-Agent
    }
    
    client = modrinth.ModrinthClient(token=API_TOKEN)
    
    
    
    versionInstance = modrinth.NewVersion(
        name = DISPLAY_NAME,
        version_number = projectVersion,
        project_id = PROJECT_ID,
        game_versions = gameVersions,
        loaders = [loader],
        version_type = modrinth.VersionType.RELEASE,
        featured = True,
        environment = "client_and_server",
        changelog = "",
        dependencies = [
            {
                "project_id": projectIdDict["gstools"],
                "dependency_type": "required"
            }
        ]
    )
    
    client.create_version(versionInstance, file_paths=[Path(path)])
    
    return

    # Open the file in binary read mode
    try:
        uploadFailed = 0
        while uploadFailed < 20:
            try:
                with open(FILE_PATH, 'rb') as f:
                    
                    files = {
                        "file": (path.split("\\")[-1], f),
                        "data": (None, json.dumps(metadata), "application/json")
                    }
                    
                    print(files)

                    # Send the POST request
                    response = requests.post(url, headers=headers, files=files)

                    # Check the response status
                    if (response.status_code == 200) or (response.status_code == 201):
                        print(f"Mod file uploaded to modrinth successfully! Response: {response.json()}")
                        uploadFailed = 20
                        
                        return response.json()
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
                            uploadFailed = 20
            except:
                print(traceback.format_exc())
                
            uploadFailed = uploadFailed + 1
                
            time.sleep(1)

    except FileNotFoundError:
        print(f"Error: File not found at {FILE_PATH}")
    except Exception as e:
        print(f"An error occurred: {e}")