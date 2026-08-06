import os
import modules.pytools as pytools
folder = ".\\block_decay\\data\\blockdecay\\function\\compat"

for path, dirs, files in os.walk(folder):
    if (dirs == files):
        os.system("rmdir \"" + path + "\" /s /q")
        
for path, dirs, files in os.walk(folder):
    for file in files:
        if "main.mcfunction" in file:
            mainFile = pytools.IO.getFile(path + "\\" + file)
            newMainFile = mainFile
            
            for line in mainFile.split("\n"):
                if "function blockdecay:" in line:
                    
                    if not os.path.exists(".\\block_decay\\data\\blockdecay\\function\\" + line.split(":")[-1].replace("/", "\\") + ".mcfunction"):
                        print("Removing reference to " + ".\\block_decay\\data\\blockdecay\\function\\" + line.split(":")[-1].replace("/", "\\") + "...")
                        newMainFile = newMainFile.replace(line + "\n", "")
            
            if mainFile != newMainFile:
                pytools.IO.saveFile(path + "\\" + file, newMainFile)
        
        else:
            print(path)
            if "\\n" in path:
                blockFile = pytools.IO.getFile(path + "\\" + file)

                lines = []
                
                for line in blockFile.split("\n"):
                    if (line not in lines) or (line.replace(" ", "") == "") or (line.replace(" ", "")[0] == "#"):
                        lines.append(line)
                        
                    else:
                        print("Removing duplicate line from " + path + "\\" + file + " ;;; " + line)
                        
                if blockFile != "\n".join(lines):
                    pytools.IO.saveFile(path + "\\" + file, "\n".join(lines))
                        