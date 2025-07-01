# damage flashlight missing

execute store result score -m flbc run scoreboard players get -min flbc
execute store result score -g flbc run scoreboard players get -max flbc
scoreboard players operation -g flbc -= -m flbc
scoreboard players set -t flbc 100
scoreboard players operation -g flbc *= -t flbc
scoreboard players operation -g flbc /= -dist flbc

execute store result score -wg flbc run scoreboard players get -max flbc
scoreboard players set -t flbc 35
scoreboard players operation -wg flbc *= -t flbc
execute store result score -pg flbc run scoreboard players get -wg flbc
scoreboard players set -t flbc 10
scoreboard players operation -pg flbc *= -t flbc
scoreboard players set -t flbc 14
scoreboard players operation -pg flbc /= -t flbc
scoreboard players operation -pg flbc /= -dist flbc

scoreboard players set -d flbc -1
function flashlight_by_creepermeyt:utils/actual_gen_line

#scoreboard players reset -g flbc
#scoreboard players reset -t flbc
#scoreboard players reset -l flbc
#scoreboard players reset -d flbc
#scoreboard players reset -m flbc
#scoreboard players reset -p flbc
#scoreboard players reset -pg flbc

scoreboard players reset -min flbc
scoreboard players reset -max flbc