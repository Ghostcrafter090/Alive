# Define

# Main
forceload add 5999368 0 5999368 0
fill 5999938 0 0 5999938 0 0 bedrock replace
execute if entity @e[tag=gstools_worker,type=marker,scores={seasonGrabberIndex=0..0}] unless block 5999938 1 0 sereneseasons:season_sensor[season=0] run fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=0] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={seasonGrabberIndex=2..2}] unless block 5999938 1 0 sereneseasons:season_sensor[season=1] run fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=1] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={seasonGrabberIndex=4..4}] unless block 5999938 1 0 sereneseasons:season_sensor[season=2] run fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=2] replace
execute if entity @e[tag=gstools_worker,type=marker,scores={seasonGrabberIndex=6..6}] unless block 5999938 1 0 sereneseasons:season_sensor[season=3] run fill 5999938 1 0 5999938 1 0 sereneseasons:season_sensor[season=3] replace