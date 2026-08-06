# Define
scoreboard objectives add desirePathsLagCount dummy
scoreboard objectives add currentlyExecutingLifeAndDeath dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingLifeAndDeath=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension LifeAndDeath.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingLifeAndDeath=1..1,averageTpsLifeAndDeathWorkerMultTen=200..}] run scoreboard players operation @s averageTpsLifeAndDeathWorkerMultTen -= @s 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingLifeAndDeath 1
schedule function gstools:extension/lifeanddeath/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunLifeAndDeath 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingLifeAndDeath 0