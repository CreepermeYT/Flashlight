tag @e[tag=flbc.light] add flbc.delete

tag @e[predicate=flashlight_by_creepermeyt:offhand_flashlight_on] add flbc.oon
tag @e[predicate=flashlight_by_creepermeyt:mainhand_flashlight_on] add flbc.mon
tag @e[predicate=flashlight_by_creepermeyt:mainhand_flashlight_off] add flbc.moff

execute as @e[predicate=flashlight_by_creepermeyt:offhand_flashlight_on] at @s run function flashlight_by_creepermeyt:flashlight 

tag @e[tag=flbc.oon] remove flbc.oon
tag @e[tag=flbc.mon] remove flbc.mon
tag @e[tag=flbc.moff] remove flbc.moff

execute as @e[tag=flbc.delete] at @s run function flashlight_by_creepermeyt:utils/delete
execute as @e[tag=flbc.update] at @s run function flashlight_by_creepermeyt:utils/create
