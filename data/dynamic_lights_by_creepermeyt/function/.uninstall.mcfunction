scoreboard players set - dynbclevel -2
scoreboard players set f dynbclevel 0
scoreboard players set t dynbclevel 0
scoreboard players set s dynbclevel 0
scoreboard players set g dynbclevel 0

tellraw @s "-----------------------------------------------------"
tellraw @s ["               < ",{"text":"Dynamic Lights","bold":true,"color":"yellow"},{"text":" By ","color":"gray"},{"bold":true,"text":"CreepermeYT"}," >"]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s {"text":"                         [ RELOAD ]","color":"green","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:internal/load"}}
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "-- Previous Action: ------------------------------------"
tellraw @s [{"text":"Uninstalled ","color":"red","bold":true},{"text":"datapack","color":"white"}]
tellraw @s "-----------------------------------------------------"

playsound ui.button.click master @s