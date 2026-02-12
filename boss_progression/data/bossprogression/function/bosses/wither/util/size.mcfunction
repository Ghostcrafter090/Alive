# Define
scoreboard objectives add currentWitherSize dummy
scoreboard objectives add currentWitherHealth dummy
scoreboard objectives add currentWitherSizeAttribute dummy

# Main
execute as @e[type=wither] store result score @s currentWitherHealth run data get entity @s Health 1
execute as @e[type=wither,scores={currentWitherHealth=300..}] run scoreboard players add @s currentWitherSize 26
execute as @e[type=wither,scores={currentWitherHealth=375..}] run scoreboard players add @s currentWitherSize 24
execute as @e[type=wither,scores={currentWitherHealth=350..}] run scoreboard players add @s currentWitherSize 22
execute as @e[type=wither,scores={currentWitherHealth=325..}] run scoreboard players add @s currentWitherSize 20
execute as @e[type=wither,scores={currentWitherHealth=300..}] run scoreboard players add @s currentWitherSize 18
execute as @e[type=wither,scores={currentWitherHealth=275..}] run scoreboard players add @s currentWitherSize 16
execute as @e[type=wither,scores={currentWitherHealth=250..}] run scoreboard players add @s currentWitherSize 14
execute as @e[type=wither,scores={currentWitherHealth=225..}] run scoreboard players add @s currentWitherSize 12
execute as @e[type=wither,scores={currentWitherHealth=200..}] run scoreboard players add @s currentWitherSize 10
execute as @e[type=wither,scores={currentWitherHealth=175..}] run scoreboard players add @s currentWitherSize 8
execute as @e[type=wither,scores={currentWitherHealth=150..}] run scoreboard players add @s currentWitherSize 6
execute as @e[type=wither,scores={currentWitherHealth=125..}] run scoreboard players add @s currentWitherSize 4
execute as @e[type=wither,scores={currentWitherHealth=100..}] run scoreboard players add @s currentWitherSize 1

execute as @e[type=wither] run scoreboard players remove @s currentWitherSize 13

execute as @e[type=wither,scores={currentWitherSize=..21840}] run scoreboard players set @s currentWitherSize 21840
execute as @e[type=wither,scores={currentWitherSize=156000..}] run scoreboard players set @s currentWitherSize 156000

execute as @e[type=wither,tag=!wither_size_setup] run scoreboard players set @s currentWitherSize 31200
execute as @e[type=wither,tag=!wither_size_setup] run tag @s add wither_size_setup

execute as @e[type=wither] run scoreboard players operation @s currentWitherSizeAttribute = @s currentWitherSize
execute as @e[type=wither] run scoreboard players operation @s currentWitherSizeAttribute /= @e[tag=gstools_worker,type=marker,limit=1] 312

execute as @e[type=wither,scores={currentWitherSizeAttribute=..79}] run attribute @s scale base set 0.7
execute as @e[type=wither,scores={currentWitherSizeAttribute=79..89}] run attribute @s scale base set 0.8
execute as @e[type=wither,scores={currentWitherSizeAttribute=89..99}] run attribute @s scale base set 0.9
execute as @e[type=wither,scores={currentWitherSizeAttribute=100..109}] run attribute @s scale base set 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=109..119}] run attribute @s scale base set 1.1
execute as @e[type=wither,scores={currentWitherSizeAttribute=119..129}] run attribute @s scale base set 1.2
execute as @e[type=wither,scores={currentWitherSizeAttribute=129..139}] run attribute @s scale base set 1.3
execute as @e[type=wither,scores={currentWitherSizeAttribute=139..149}] run attribute @s scale base set 1.4
execute as @e[type=wither,scores={currentWitherSizeAttribute=149..159}] run attribute @s scale base set 1.5
execute as @e[type=wither,scores={currentWitherSizeAttribute=159..169}] run attribute @s scale base set 1.6
execute as @e[type=wither,scores={currentWitherSizeAttribute=169..179}] run attribute @s scale base set 1.7
execute as @e[type=wither,scores={currentWitherSizeAttribute=179..189}] run attribute @s scale base set 1.8
execute as @e[type=wither,scores={currentWitherSizeAttribute=189..199}] run attribute @s scale base set 1.9
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..209}] run attribute @s scale base set 2
execute as @e[type=wither,scores={currentWitherSizeAttribute=209..219}] run attribute @s scale base set 2.1
execute as @e[type=wither,scores={currentWitherSizeAttribute=219..229}] run attribute @s scale base set 2.2
execute as @e[type=wither,scores={currentWitherSizeAttribute=229..239}] run attribute @s scale base set 2.3
execute as @e[type=wither,scores={currentWitherSizeAttribute=239..249}] run attribute @s scale base set 2.4
execute as @e[type=wither,scores={currentWitherSizeAttribute=249..259}] run attribute @s scale base set 2.5
execute as @e[type=wither,scores={currentWitherSizeAttribute=259..269}] run attribute @s scale base set 2.6
execute as @e[type=wither,scores={currentWitherSizeAttribute=269..279}] run attribute @s scale base set 2.7
execute as @e[type=wither,scores={currentWitherSizeAttribute=279..289}] run attribute @s scale base set 2.8
execute as @e[type=wither,scores={currentWitherSizeAttribute=289..299}] run attribute @s scale base set 2.9
execute as @e[type=wither,scores={currentWitherSizeAttribute=300..309}] run attribute @s scale base set 3
execute as @e[type=wither,scores={currentWitherSizeAttribute=309..319}] run attribute @s scale base set 3.1
execute as @e[type=wither,scores={currentWitherSizeAttribute=319..329}] run attribute @s scale base set 3.2
execute as @e[type=wither,scores={currentWitherSizeAttribute=329..339}] run attribute @s scale base set 3.3
execute as @e[type=wither,scores={currentWitherSizeAttribute=339..349}] run attribute @s scale base set 3.4
execute as @e[type=wither,scores={currentWitherSizeAttribute=349..359}] run attribute @s scale base set 3.5
execute as @e[type=wither,scores={currentWitherSizeAttribute=359..369}] run attribute @s scale base set 3.6
execute as @e[type=wither,scores={currentWitherSizeAttribute=369..379}] run attribute @s scale base set 3.7
execute as @e[type=wither,scores={currentWitherSizeAttribute=379..389}] run attribute @s scale base set 3.8
execute as @e[type=wither,scores={currentWitherSizeAttribute=389..399}] run attribute @s scale base set 3.9
execute as @e[type=wither,scores={currentWitherSizeAttribute=400..409}] run attribute @s scale base set 4
execute as @e[type=wither,scores={currentWitherSizeAttribute=409..419}] run attribute @s scale base set 4.1
execute as @e[type=wither,scores={currentWitherSizeAttribute=419..429}] run attribute @s scale base set 4.2
execute as @e[type=wither,scores={currentWitherSizeAttribute=429..439}] run attribute @s scale base set 4.3
execute as @e[type=wither,scores={currentWitherSizeAttribute=439..449}] run attribute @s scale base set 4.4
execute as @e[type=wither,scores={currentWitherSizeAttribute=449..459}] run attribute @s scale base set 4.5
execute as @e[type=wither,scores={currentWitherSizeAttribute=459..469}] run attribute @s scale base set 4.6
execute as @e[type=wither,scores={currentWitherSizeAttribute=469..479}] run attribute @s scale base set 4.7
execute as @e[type=wither,scores={currentWitherSizeAttribute=479..489}] run attribute @s scale base set 4.8
execute as @e[type=wither,scores={currentWitherSizeAttribute=489..499}] run attribute @s scale base set 4.9
execute as @e[type=wither,scores={currentWitherSizeAttribute=500..}] run attribute @s scale base set 5

execute as @e[type=wither_skull,tag=!splitoff] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run summon wither_skull ^ ^ ^1 {Tags:['wither_not_setup','splitoff'],Motion:[0.0,-1.0,0.0]}
execute as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run data modify entity @s Motion set from entity @e[type=wither_skull,tag=!splitoff,sort=nearest,limit=1] Motion
execute as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run data modify entity @s Motion[1] set value -1
execute as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run data modify entity @s dangerous set from entity @e[type=wither_skull,tag=!splitoff,sort=nearest,limit=1] dangerous
execute as @e[type=wither_skull,tag=splitoff,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run tag @s remove wither_not_setup
execute as @e[type=wither_skull,tag=!splitoff] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=100..},distance=0..10] run tag @s add splitoff

execute as @e[type=wither_skull,tag=splitoff,tag=!splitoff_1] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run summon wither_skull ^ ^ ^1 {Tags:['wither_not_setup','splitoff_1','splitoff'],Motion:[0.0,-1.0,0.0]}
execute as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s Motion set from entity @e[type=wither_skull,tag=splitoff,tag=!splitoff_1,sort=nearest,limit=1] Motion
execute as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s Motion[1] set value -1
execute as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run data modify entity @s dangerous set from entity @e[type=wither_skull,tag=splitoff,tag=!splitoff_1,sort=nearest,limit=1] dangerous
execute as @e[type=wither_skull,tag=splitoff_1,tag=wither_not_setup] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run tag @s remove wither_not_setup
execute as @e[type=wither_skull,tag=splitoff,tag=!splitoff_1] at @s if entity @e[type=wither,scores={currentWitherSizeAttribute=200..},distance=0..10] run tag @s add splitoff_1

execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..40] run effect give @s wither 10 0
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..20] run effect give @s wither 10 1
execute as @e[type=wither,scores={currentWitherSizeAttribute=200..}] at @s as @e[tag=fish,distance=0..10] run effect give @s wither 10 2