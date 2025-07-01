tag @e[tag=flbc.light] add flbc.delete

execute as @e[predicate=flashlight_by_creepermeyt:spyglass_offhand] at @s run function flashlight_by_creepermeyt:flashlight 

execute as @e[tag=flbc.delete] at @s run function flashlight_by_creepermeyt:utils/delete
execute as @e[tag=flbc.update] at @s run function flashlight_by_creepermeyt:utils/create
