
#set width
execute store result score -w flbc run scoreboard players get -wg flbc
scoreboard players operation -w flbc *= -d flbc
scoreboard players set -t flbc 1000
scoreboard players operation -w flbc /= -t flbc
#execute store result storage flashlight_by_creepermeyt:flbc width double 0.055 run scoreboard players get -d flbc

#set light lvl
execute store result score s flbc run scoreboard players get -g flbc
scoreboard players operation s flbc *= -d flbc
#add 50 to round up
scoreboard players set -t flbc 50
scoreboard players operation s flbc += -t flbc
scoreboard players set -t flbc 100
scoreboard players operation s flbc /= -t flbc
scoreboard players operation s flbc += -m flbc
execute if score s flbc matches 16.. run scoreboard players set s flbc 15
#execute store result storage flashlight_by_creepermeyt:flbc lvl int 1 run scoreboard players get s flbc

#say 23
#set particles
execute store result score -pw flbc run scoreboard players get -pg flbc
scoreboard players operation -pw flbc *= -d flbc
scoreboard players set -t flbc 10
scoreboard players operation -pw flbc /= -t flbc
execute store result score -p flbc run scoreboard players get -pw flbc
scoreboard players operation -p flbc /= -t flbc
scoreboard players add -p flbc 1

#say 24
#gen the light
function flashlight_by_creepermeyt:gen/step1/init
#function flashlight_by_creepermeyt:auto_focused/actual_gen_spot with storage flashlight_by_creepermeyt:flbc
