scoreboard players set -dist flbc 0

summon minecraft:marker ~ ~ ~ {Tags:[flbc.target]}
function flashlight_by_creepermeyt:utils/actual_get_dist

scoreboard players remove -dist flbc 1
scoreboard players reset -sf flbc