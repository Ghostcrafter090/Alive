import numpy as np
import desmos
import modules.pytools as pytools

def genFunction(string):
    output = desmos.parseFunction(string)
    def func(x):
        return eval(output.split(" = ")[1].replace("x", str(x)))
        
    return func

def breakDownFunction(func, startX, endX, depth=100, floatPoint=10000):
    
    step = (endX - startX) / depth
    
    if step < 1:
        step = 1
        depth = (endX - startX)
    
    outList = []
    i = 0
    while i < depth:
        
        ax = startX + (step * i)
        bx = startX + (step * (i + 1))
        
        a = func(ax)
        b = func(bx)
        
        slope = (b - a) / (bx - ax)
        
        adj = (slope * ax) - a
        
        outList.append([ax, bx - 1, int(slope * floatPoint), int(adj * floatPoint)])
        
        i = i + 1
        
    return outList

def compileToFunction(breakDownList, xScoreName, yScoreName, floatPoint=10000):
    
    scoresDeclared = "scoreboard objectives add " + yScoreName + "WasDefined dummy\nexecute unless entity @s[scores={" + yScoreName + "WasDefined=1..1}] run scoreboard objectives add " + yScoreName + " dummy\n"
    scoresDefined = ""
    strff = ""
    i = 0
    for x in breakDownList:
        
        scoresDeclared = scoresDeclared + "\nexecute unless entity @s[scores={<y>WasDefined=1..1}] run scoreboard objectives add <y>Slope<i> dummy".replace("<x>", xScoreName).replace("<y>", yScoreName).replace("<ax>", str(int(x[0]))).replace("<bx>", str(int(x[1]))).replace("<slope>", str(int(x[2]))).replace("<adjust>", str(abs(int(x[3])))).replace("<i>", str(int(x[0]))).replace("<float>", str(int(floatPoint))).replace("<add|remove>", ("add" * (x[3] <= 0)) + ("remove" * (x[3] > 0)))
        scoresDefined = scoresDefined + "\nexecute unless entity @s[scores={<y>WasDefined=1..1}] run scoreboard players set @s <y>Slope<i> <slope>".replace("<x>", xScoreName).replace("<y>", yScoreName).replace("<ax>", str(int(x[0]))).replace("<bx>", str(int(x[1]))).replace("<slope>", str(int(x[2]))).replace("<adjust>", str(abs(int(x[3])))).replace("<i>", str(int(x[0]))).replace("<float>", str(int(floatPoint))).replace("<add|remove>", ("add" * (x[3] <= 0)) + ("remove" * (x[3] > 0)))
        
        strff = strff + """
execute if entity @s[scores={<x>=<ax>..<bx>}] run scoreboard players operation @s <y> = @s <x>
execute if entity @s[scores={<x>=<ax>..<bx>}] run scoreboard players operation @s <y> *= @s <y>Slope<i>
execute if entity @s[scores={<x>=<ax>..<bx>}] run scoreboard players <add|remove> @s <y> <adjust>
execute if entity @s[scores={<x>=<ax>..<bx>}] run scoreboard players operation @s <y> /= @e[type=marker,tag=gstools_worker] <float>""".replace("<x>", xScoreName).replace("<y>", yScoreName).replace("<ax>", str(int(x[0]))).replace("<bx>", str(int(x[1]))).replace("<slope>", str(int(x[2]))).replace("<adjust>", str(abs(int(x[3])))).replace("<i>", str(int(x[0]))).replace("<float>", str(int(floatPoint))).replace("<add|remove>", ("add" * (x[3] <= 0)) + ("remove" * (x[3] > 0)))

        
        i = i + 1
        
    scoresDefined = scoresDefined + "\n\nexecute unless entity @s[scores={<y>WasDefined=1..1}] run scoreboard players set @s <y>WasDefined 1".replace("<x>", xScoreName).replace("<y>", yScoreName).replace("<ax>", str(int(x[0]))).replace("<bx>", str(int(x[1]))).replace("<slope>", str(int(x[2]))).replace("<adjust>", str(abs(int(x[3])))).replace("<i>", str(int(x[0]))).replace("<float>", str(int(floatPoint))).replace("<add|remove>", ("add" * (x[3] <= 0)) + ("remove" * (x[3] > 0)))
        
    return "# Define\n" + scoresDeclared + "\n\n" + scoresDefined + "\n\n# Main\n" + strff

def getOutput(functionString, xScoreName, yScoreName, startX, endX, depth=100, floatPoint=10000, savePath="print"):
    func = genFunction(functionString)
    functionHarmonics = breakDownFunction(func, startX, endX, depth, floatPoint)
    output = compileToFunction(functionHarmonics, xScoreName, yScoreName, floatPoint)
    
    if savePath == "print":
        print(output)
    elif savePath == "return":
        return output
    else:
        pytools.IO.saveJson(savePath, output)
        
