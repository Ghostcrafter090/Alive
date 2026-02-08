# Define
scoreboard objectives add desirePathsLagCount dummy

# Main
function lifeanddeath:main
schedule function gstools:extension/lifeanddeath/lagcheck 1t append