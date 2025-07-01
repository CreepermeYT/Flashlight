#say 21
execute if score -d flbc >= -dist flbc run return 0
scoreboard players add -d flbc 1

#say 22

scoreboard players set -sg flbc 0
function flashlight_by_creepermeyt:utils/skipcheck
execute if score -sg flbc matches 1 run function flashlight_by_creepermeyt:utils/actual_gen

#say 25
execute if score -d flbc < -dist flbc positioned ^ ^ ^1 run function flashlight_by_creepermeyt:utils/actual_gen_line
#say 26