import pytools

import subprocess

for file in subprocess.getoutput("dir .\\entity\\*.mcfunction /b").split('\n'):
    dat = pytools.IO.getFile(".\\entity\\" + file)
    dat = dat.replace("tag ", "execute if entity @s[type=" + file.split(".mcfunction")[0] + "] run tag ")
    pytools.IO.saveFile(".\\entity\\" + file, dat)