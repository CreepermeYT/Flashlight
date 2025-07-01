#break on 0 durability
execute store result score -dur flbyc run data get entity @s SelectedItem.components."minecraft:damage"
execute if score -dur flbyc matches 300 run playsound minecraft:item.shield.break block @a[distance=..10] ~ ~ ~
execute if score -dur flbyc matches 300 run item replace entity @s weapon.mainhand with air
execute if score -dur flbyc matches 300 run scoreboard players reset -dur flbyc
execute unless score -dur flbyc matches 0.. run return 1


#get -dist
#function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:0}
execute positioned ~ ~1.6 ~ run function flashlights_bycreepermeyt:auto_focused/get_dist

#random flashlight flicker on low -dur ability
execute store result score -t flbyc run random value 0..10
execute if score -t flbyc matches 10.. run scoreboard players remove -dur flbyc 10

#gen light rays with different intensities depending on -dur ability
execute unless score -dur flbyc matches 280.. run execute positioned ~ ~1.6 ~ run function flashlights_bycreepermeyt:auto_focused/gen_line {min:7,max:15}
execute if score -dur flbyc matches 280.. if score -dur flbyc matches ..289 run execute positioned ~ ~1.6 ~ run function flashlights_bycreepermeyt:auto_focused/gen_line {min:5,max:11}
execute if score -dur flbyc matches 290.. run execute positioned ~ ~1.6 ~ run function flashlights_bycreepermeyt:auto_focused/gen_line {min:3,max:7}

#scoreboard players reset -dur flbyc
#scoreboard players reset -dist flbyc
#scoreboard players reset -t flbyc