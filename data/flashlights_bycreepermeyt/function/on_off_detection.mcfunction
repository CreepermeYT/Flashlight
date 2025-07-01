execute if score @s flbyc matches 2.. run scoreboard players set @s flbyc 0

execute if entity @s[predicate=flashlights_bycreepermeyt:mainhand_flashlight_on] if score @s flbyc matches 1 run tag @s add flbyc.turn_off
execute if entity @s[tag=flbyc.turn_off] run item modify entity @s weapon.mainhand flashlights_bycreepermeyt:turn_off
execute if entity @s[tag=flbyc.turn_off] run scoreboard players set @s flbyc 0
tag @s remove flbyc.turn_off
execute unless entity @s[predicate=flashlights_bycreepermeyt:mainhand_flashlight_on] if score @s flbyc matches 1 run tag @s add flbyc.turn_on
execute if entity @s[tag=flbyc.turn_on] run item modify entity @s weapon.mainhand flashlights_bycreepermeyt:turn_on
execute if entity @s[tag=flbyc.turn_on] run scoreboard players set @s flbyc 0
tag @s remove flbyc.turn_on
