scoreboard players add f dynbclevel 1
execute if score f dynbclevel matches 2 run scoreboard players set f dynbclevel 0

function dynamic_lights_by_creepermeyt:internal/rconfig

tellraw @s "-- Previous Action: ------------------------------------"
execute if score f dynbclevel matches 0 run tellraw @s [{"text":"Disabled ","color":"white","bold":true},{"text":"entities on","color":"gray","bold":false},{"text":" Fire","color":"gold"}]
execute if score f dynbclevel matches 1 run tellraw @s [{"text":"Enabled ","color":"white","bold":true},{"text":"entities on","color":"gray","bold":false},{"text":" Fire","color":"gold"}]
tellraw @s "-----------------------------------------------------"

