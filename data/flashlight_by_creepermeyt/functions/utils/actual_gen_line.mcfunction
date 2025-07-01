#say 21
execute if score -d flbc >= -dist flbc run return 0
scoreboard players add -d flbc 1

#say 22

scoreboard players set -sg flbc 0
execute store result score -dt flbc run scoreboard players get -d flbc
scoreboard players set -t flbc 4
scoreboard players operation -dt flbc %= -t flbc
execute if score -dt flbc matches 0 run scoreboard players set -sg flbc 1
execute if score -d flbc matches ..3 run scoreboard players set -sg flbc 1
scoreboard players remove -dist flbc 3
execute if score -d flbc >= -dist flbc run scoreboard players set -sg flbc 1
scoreboard players add -dist flbc 3

execute if score -sg flbc matches 1 run function flashlight_by_creepermeyt:utils/actual_gen

#say 25
execute if score -d flbc < -dist flbc positioned ^ ^ ^1 run function flashlight_by_creepermeyt:utils/actual_gen_line
#say 26