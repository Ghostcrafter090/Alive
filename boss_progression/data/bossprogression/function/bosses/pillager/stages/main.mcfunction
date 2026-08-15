# Define
scoreboard objectives add pillagerStage dummy
scoreboard objectives add pillagersKilledCount minecraft.killed:minecraft.pillager
scoreboard objectives add evokersKilledCount minecraft.killed:minecraft.evoker
scoreboard objectives add ravagersKilledCount minecraft.killed:minecraft.ravager
scoreboard objectives add nazisKilledCount minecraft.killed:minecraft.vindicator
scoreboard objectives add witchesKilledCount minecraft.killed:minecraft.vindicator
scoreboard objectives add vexsKilledCount minecraft.killed:minecraft.vindicator
scoreboard objectives add illusionersKilledCount minecraft.killed:minecraft.illusioner

scoreboard objectives add illagersKilledCount dummy
scoreboard objectives add illagersKilledCountWorker dummy

# Main
execute as @a run scoreboard players operation @s illagersKilledCount = @s pillagersKilledCount

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s evokersKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker *= @e[tag=gstools_worker,type=marker] 2
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s ravagersKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker /= @e[tag=gstools_worker,type=marker] 3
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s nazisKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker *= @e[tag=gstools_worker,type=marker] 3
execute as @a run scoreboard players operation @s illagersKilledCountWorker /= @e[tag=gstools_worker,type=marker] 2
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s witchesKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker /= @e[tag=gstools_worker,type=marker] 2
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s vexsKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker /= @e[tag=gstools_worker,type=marker] 4
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

execute as @a run scoreboard players operation @s illagersKilledCountWorker = @s illusionersKilledCount
execute as @a run scoreboard players operation @s illagersKilledCountWorker *= @e[tag=gstools_worker,type=marker] 3
execute as @a run scoreboard players operation @s illagersKilledCount += @s illagersKilledCountWorker

scoreboard players set @e[tag=gstools_worker,type=marker,limit=1] pillagerStage 0
execute as @a run scoreboard players operation @e[tag=gstools_worker,type=marker,limit=1] pillagerStage += @s illagersKilledCount
execute as @e[tag=gstools_worker,type=marker,limit=1] run scoreboard players operation @s pillagerStage /= @s 20

execute as @e[tag=gstools_worker,type=marker,scores={pillagerStage=1..}] run schedule function bossprogression:bosses/pillager/stages/mining/main 1t append
execute as @e[tag=gstools_worker,type=marker,scores={pillagerStage=2..}] run schedule function bossprogression:bosses/pillager/stages/studying/main 2t append
execute as @e[tag=gstools_worker,type=marker,scores={pillagerStage=3..}] run schedule function bossprogression:bosses/pillager/stages/nether/main 2t append

# Disable
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] if entity @s[nbt={Patrolling:1b}] at @s unless entity @a[scores={illagersKilledCount=1..},distance=0..300] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s if entity @e[type=pillager,distance=1..100] unless entity @a[scores={illagersKilledCount=1..}] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s unless entity @e[type=pillager,distance=1..100] unless entity @a[scores={illagersKilledCount=1..}] run tag @s add no_kill_pillager
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s if entity @e[type=pillager,distance=1..100] if entity @a[scores={illagersKilledCount=2..3},distance=0..300] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s unless entity @e[type=pillager,distance=1..100] if entity @a[scores={illagersKilledCount=2..3},distance=0..300] run tag @s add no_kill_pillager
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s if entity @e[type=pillager,distance=1..50] if entity @a[scores={illagersKilledCount=4..7},distance=0..300] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s unless entity @e[type=pillager,distance=1..50] if entity @a[scores={illagersKilledCount=4..7},distance=0..300] run tag @s add no_kill_pillager
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s if entity @e[type=pillager,distance=1..25] if entity @a[scores={illagersKilledCount=8..15},distance=0..300] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s unless entity @e[type=pillager,distance=1..25] if entity @a[scores={illagersKilledCount=8..15},distance=0..300] run tag @s add no_kill_pillager
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s if entity @e[type=pillager,distance=1..12] if entity @a[scores={illagersKilledCount=16..19},distance=0..300] run kill @s
execute as @e[type=pillager,limit=1,sort=random,tag=!no_kill_pillager] unless entity @s[nbt={Patrolling:1b}] at @s unless entity @e[type=pillager,distance=1..12] if entity @a[scores={illagersKilledCount=16..19},distance=0..300] run tag @s add no_kill_pillager


