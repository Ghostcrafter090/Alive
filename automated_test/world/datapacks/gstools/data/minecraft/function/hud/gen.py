import math
import pytools

x = """execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=105000..}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuupwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..105000}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuuowwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..98427}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuunwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..91875}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuumwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..85312}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuulwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..78750}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuukwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..72187}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuujwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..65625}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuuiwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..56062}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuuhwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..52500}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuugwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..45937}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuufwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..39375}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuuewwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..26250}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuudwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..19687}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuucwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..13125}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuubwwwwwwwwww","font":"enhancedsurvival:images"}
execute as @a[scores={stamina=1000..}] if entity @s[scores={thirst=100..}] if entity @s[scores={insomnia=..6562}] run title Ghostcrafter090 actionbar {"text":"uuuuuuuuuuawwwwwwwwww","font":"enhancedsurvival:images"}"""

listOutput = []

staminaKey = {
    5: "u",
    4: "t",
    3: "s",
    2: "r",
    1: "q",
    0: "v",
}

def getStaminaString(value):
    value = value / 20
    strf = "u" * math.floor(value / 5)
    if value < 50:
        if ((value / 5) - (math.floor(value / 5))) != 0:
            strf = strf + staminaKey[int(((value / 5) - (math.floor(value / 5))) * 5)]
        else:
            strf = strf + "u"
    strf = strf + ("v" * (10 - math.ceil(value / 5)))
    
    return strf

def getThirstString(value):
    if value >= 100:
        return "wwwwwwwwww"
    elif value <= 0:
        return "yyyyyyyyyy"
    else:
        strf = "w" * math.floor(value / 10)
        if (value % 10) >= 5:
            strf = strf + "w"
        else:
            strf = strf + "x"
        strf = strf + ("y" * ((10 - math.floor(value / 10)) - 1))
        
        return strf

stamina = 1000

while stamina >= 0:
    thirst = 100
    while thirst >= 0:
        listOutput.append(x.replace("thirst=100..", "thirst=" + (str(int(thirst - 5)) * (thirst > 0)) + ".." + (str(int(thirst)) * (thirst < 100))).replace("stamina=1000..", "stamina=" + (str(int(stamina)) * (stamina > 0)) + ".." + (str(int(stamina + 20)) * (stamina < 1000))).replace("uuuuuuuuuu", getStaminaString(stamina + 1)).replace("wwwwwwwwww", getThirstString(thirst)))
        thirst = thirst - 5
        listOutput.append(" ")
    stamina = stamina - 20
    listOutput.append("\n")
    
    
pytools.IO.saveFile("text.txt", "\n".join(listOutput))