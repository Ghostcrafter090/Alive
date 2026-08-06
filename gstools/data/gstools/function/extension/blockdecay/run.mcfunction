# Define
scoreboard objectives add currentlyExecutingBlockDecay dummy

# Main
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBlockDecay=1..1}] if entity @e[type=marker,tag=gstools_worker,scores={enableDebugMessages=1..1}] run say [GSTOOLS] WARNING: Command Execution limit bypass detected for extension BlockDecay.
execute as @e[type=marker,tag=gstools_worker,scores={currentlyExecutingBlockDecay=1..1,averageTpsBlockDecayWorkerMultTen=261..}] run scoreboard players remove @s averageTpsBlockDecayWorkerMultTen 20
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBlockDecay 1
function blockdecay:main
schedule function gstools:extension/blockdecay/lagcheck 1t append
execute as @e[tag=gstools_worker,type=marker] run scoreboard players set @s doRunBlockDecay 0
scoreboard players set @e[type=marker,tag=gstools_worker] currentlyExecutingBlockDecay 0