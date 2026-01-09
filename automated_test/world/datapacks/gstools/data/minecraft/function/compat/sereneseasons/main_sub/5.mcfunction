execute if entity @s[scores={seasonGrabberIndex=0..0}] run scoreboard players set @s currentSeasonDay 0
execute if entity @s[scores={seasonGrabberIndex=0..99}] run function gstools:compat/sereneseasons/place
execute if entity @s[scores={seasonGrabberIndex=24..24}] run function gstools:compat/sereneseasons/get
execute if entity @s[scores={seasonGrabberIndex=49..49}] run function gstools:compat/sereneseasons/get
execute if entity @s[scores={seasonGrabberIndex=74..74}] run function gstools:compat/sereneseasons/get
execute if entity @s[scores={seasonGrabberIndex=99..99}] run function gstools:compat/sereneseasons/get
execute if entity @s[scores={seasonGrabberIndex=0..99}] run scoreboard players add @s seasonGrabberIndex 1