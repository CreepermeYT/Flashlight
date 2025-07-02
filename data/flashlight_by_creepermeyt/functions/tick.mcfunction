tag @e[tag=flbc.light] add flbc.delete

tag @a[predicate=flashlight_by_creepermeyt:offhand_flashlight_on] add flbc.oon
tag @a[predicate=flashlight_by_creepermeyt:mainhand_flashlight_on] add flbc.mon
tag @a[predicate=flashlight_by_creepermeyt:mainhand_flashlight] add flbc.mf

execute as @a[tag=flbc.oon] at @s run function flashlight_by_creepermeyt:flashlight 
execute as @a[tag=flbc.mon,tag=!flbc.oon] at @s run function flashlight_by_creepermeyt:flashlight 

execute as @a[scores={flbc=1..}] at @s run function flashlight_by_creepermeyt:utils/toggleflashlight

tag @e[tag=flbc.oon] remove flbc.oon
tag @e[tag=flbc.mon] remove flbc.mon
tag @e[tag=flbc.mf] remove flbc.mf

execute as @e[tag=flbc.delete] at @s run function flashlight_by_creepermeyt:utils/delete
execute as @e[tag=flbc.update] at @s run function flashlight_by_creepermeyt:utils/create
