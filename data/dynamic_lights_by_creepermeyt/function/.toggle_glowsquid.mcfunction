scoreboard players add s dynbclevel 1
execute if score s dynbclevel matches 2 run scoreboard players set s dynbclevel 0

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score s dynbclevel matches 0 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"glowing ","color":"gray","bold":false},{"text":"Glow Squid","color":"blue"}]
execute if score s dynbclevel matches 1 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"glowing ","color":"gray","bold":false},{"text":"Glow Squid","color":"blue"}]
tellraw @s "-----------------------------------------------------"

