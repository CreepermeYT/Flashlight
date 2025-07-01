execute if score @s dynbclevel matches 0 run function dynamic_lights_by_creepermeyt:internal/eraselights
execute if entity @s[tag=successfulerase] run kill @s
execute if entity @s[tag=successfulerase] run return 1

$execute if score @s dynbclevel matches $(dyn) run return 0

execute store result entity @s data.dyn int 1 run scoreboard players get @s dynbclevel
function dynamic_lights_by_creepermeyt:internal/generatelights with entity @s data