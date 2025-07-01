scoreboard players add t dynbclevel 1
execute if score t dynbclevel matches 2 run scoreboard players set t dynbclevel 0

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score t dynbclevel matches 0 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"lit ","color":"gray","bold":false},{"text":"TNT","color":"red"}]
execute if score t dynbclevel matches 1 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"lit ","color":"gray","bold":false},{"text":"TNT","color":"red"}]
tellraw @s "-----------------------------------------------------"

