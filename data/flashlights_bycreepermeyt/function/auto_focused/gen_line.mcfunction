##used to turn off the flashlight if dist is more than 100
#execute if score -dist flbyc matches 101.. run return 0

execute if entity @s[predicate=flashlights_bycreepermeyt:offhand_flashlight_on,predicate=!flashlights_bycreepermeyt:mainhand_flashlight_on] if score t flbyc matches 0 run item modify entity @s weapon.offhand flashlights_bycreepermeyt:damage
execute if entity @s[predicate=flashlights_bycreepermeyt:mainhand_flashlight_on] if score t flbyc matches 0 run item modify entity @s weapon.mainhand flashlights_bycreepermeyt:damage


$scoreboard players set -m flbyc $(min)
$scoreboard players set -g flbyc $(max)
scoreboard players operation -g flbyc -= -m flbyc
scoreboard players set -t flbyc 100
scoreboard players operation -g flbyc *= -t flbyc
scoreboard players operation -g flbyc /= -dist flbyc

$scoreboard players set -pg flbyc $(max)
scoreboard players operation -pg flbyc *= -t flbyc
scoreboard players operation -pg flbyc /= -dist flbyc



scoreboard players set -d flbyc -1
function flashlights_bycreepermeyt:auto_focused/actual_gen_line

#scoreboard players reset -g flbyc
#scoreboard players reset -t flbyc
#scoreboard players reset -l flbyc
#scoreboard players reset -d flbyc
#scoreboard players reset -m flbyc
#scoreboard players reset -p flbyc
#scoreboard players reset -pg flbyc