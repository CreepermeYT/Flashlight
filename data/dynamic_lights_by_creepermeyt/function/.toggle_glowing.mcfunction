scoreboard players add g dynbclevel 1
execute if score g dynbclevel matches 2 run scoreboard players set g dynbclevel 0

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score g dynbclevel matches 0 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"entities with","color":"gray","bold":false},{"text":" Glowing","color":"gray"}]
execute if score g dynbclevel matches 1 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"entities with","color":"gray","bold":false},{"text":" Glowing","color":"gray"}]
tellraw @s "-----------------------------------------------------"

