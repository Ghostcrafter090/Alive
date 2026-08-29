from nbt import nbt
import subprocess

def readStructurePallete(path):
    palette = []
    files = subprocess.getoutput("dir \"" + path + "\\*.nbt\" /s /b").split("\n")
    for file in files:
        nbtData = nbt.NBTFile(file, 'rb')
        for block in nbtData["palette"]:
            if block not in palette:
                palette.append(block)
    
    return pallete

