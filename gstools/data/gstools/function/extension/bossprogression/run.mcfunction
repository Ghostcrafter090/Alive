# Define
scoreboard objectives add desirePathsLagCount dummy

# Main
function bossprogression:main
schedule function gstools:extension/bossprogression/lagcheck 1t append