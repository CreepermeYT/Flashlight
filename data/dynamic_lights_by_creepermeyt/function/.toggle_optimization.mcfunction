scoreboard players add - dynbclevel 1
execute if score - dynbclevel matches 2 run scoreboard players set - dynbclevel -1

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score - dynbclevel matches 1 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"all items except ","color":"gray","bold":false},{"text":"Torches","color":"yellow"}]
execute if score - dynbclevel matches 0 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"All Items","color":"yellow"}]
execute if score - dynbclevel matches -1 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"All Items","color":"gray"}]
tellraw @s "-----------------------------------------------------"

