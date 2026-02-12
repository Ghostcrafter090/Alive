import modules.pytools as pytools
import os

def runDeveloperTest():
    path = pytools.IO.getJson("test_location.json")["datapacks_folder_path"]
    os.system("robocopy \"..\\datapacks\" \"" + path + "\" * /mir")
    
runDeveloperTest()