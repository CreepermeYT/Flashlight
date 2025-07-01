#tick every 1 sec
scoreboard players add t flbyc 1
execute if score t flbyc matches 20.. run scoreboard players set t flbyc 0




#detect turn on/off of flashlight

execute as @a[predicate=flashlights_bycreepermeyt:mainhand_flashlight] run function flashlights_bycreepermeyt:on_off_detection



#flashlight

execute as @a[predicate=flashlights_bycreepermeyt:mainhand_flashlight_on] at @s run function flashlights_bycreepermeyt:auto_focused/gen_auto_focused
execute as @a[predicate=flashlights_bycreepermeyt:offhand_flashlight_on,predicate=!flashlights_bycreepermeyt:mainhand_flashlight_on] at @s run function flashlights_bycreepermeyt:auto_focused/gen_auto_focused


