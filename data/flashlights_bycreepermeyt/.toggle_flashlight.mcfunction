scoreboard players add fl dynbclevel 1
execute if score fl dynbclevel matches 2 run scoreboard players set fl dynbclevel 0

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score fl dynbclevel matches 0 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"Flashlights","color":"yellow"}]
execute if score fl dynbclevel matches 1 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"Flashlights","color":"yellow"}]
tellraw @s "-----------------------------------------------------"

