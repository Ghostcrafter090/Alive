import modules.pytools as pytools
import subprocess
import os
import sys

filePaths = []

nameSpaceToFolder = {
    
}

for folder in subprocess.getoutput("dir /a:d /b").split("\n"):
    if os.path.exists(".\\" + folder + "\\pack.mcmeta"):
        for x in subprocess.getoutput("dir /s /b .\\" + folder + "\\*.mcfunction").split("\n"):
            if ("\\hud\\" not in x) and ("\\cursor\\chunk\\forceload\\" not in x):
                file = pytools.IO.getBytes(x)
                file = file.decode(encoding="utf-8", errors="replace")
                for line in file.split("\n"):
                    if ("schedule function" in line) and (line.replace(" ", "")[0] != "#"):
                        filePaths.append(line.split("schedule function ")[1].split(" ")[0])
                        print(line.split("schedule function ")[1].split(" ")[0])
                        if filePaths[-1].split(":")[0] not in nameSpaceToFolder:
                            nameSpaceToFolder[filePaths[-1].split(":")[0]] = folder

                  
for name in filePaths:
    path = ".\\" + nameSpaceToFolder[name.split(":")[0]] + "\\data\\" + name.split(":")[0] + "\\function\\" + name.split(":")[1].replace("/", "\\") + ".mcfunction"
    data = pytools.IO.getBytes(path)
    if type(data) == bytes:
        data = data.decode(encoding='utf-8', errors="replace").replace("\r", "")
        if (len(sys.argv) <= 1) or (sys.argv[1] != "--enable"):
            if "alive_command_limit_trace_debug" in data:
                for line in data.split("\n"):
                    if "alive_command_limit_trace_debug" in line:
                        data = data.replace(line + "\n", "")
                        
                        pytools.IO.saveFile(path, data)
                        print(data.encode())
                        break
        else:
        
            if ("say \"[alive_command_limit_trace_debug] " + name + "\"") not in data:
                if "# Main" in data:
                    data = data.replace("# Main", "# Main\n" + ("say \"[alive_command_limit_trace_debug] " + name + "\""))
                else:
                    data = ("say \"[alive_command_limit_trace_debug] " + name + "\"\n") + data

                pytools.IO.saveFile(path, data)
        
        
