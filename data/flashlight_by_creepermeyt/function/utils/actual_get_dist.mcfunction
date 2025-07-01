execute if score -dist flbc matches 101.. run return 1
scoreboard players add -dist flbc 1
execute positioned ^ ^ ^1 store result score -sf flbc run function flashlight_by_creepermeyt:utils/ispositionsafe
execute if score -sf flbc matches 1 positioned ^ ^ ^1 run function flashlight_by_creepermeyt:utils/actual_get_dist
