#execute if data entity @s Inventory[{"Slot":-106b,tag:{display:{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■"},{"color":"dark_gray","text":"□□□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']}}}] run tag @s add flbc.h1
#execute if data entity @s Inventory[{"Slot":-106b,tag:{display:{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■"},{"color":"dark_gray","text":"□□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']}}}] run tag @s add flbc.h2
#execute if data entity @s Inventory[{"Slot":-106b,tag:{display:{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■"},{"color":"dark_gray","text":"□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']}}}] run tag @s add flbc.h3
#execute if data entity @s Inventory[{"Slot":-106b,tag:{display:{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■■"},{"color":"dark_gray","text":"□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']}}}] run tag @s add flbc.h4
#execute if data entity @s Inventory[{"Slot":-106b,tag:{display:{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■■■"},{"color":"dark_gray","text":""},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']}}}] run tag @s add flbc.h5

execute if data entity @s SelectedItem.tag.display{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■"},{"color":"dark_gray","text":"□□□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']} run tag @s add flbc.h1
execute if data entity @s SelectedItem.tag.display{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■"},{"color":"dark_gray","text":"□□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']} run tag @s add flbc.h2
execute if data entity @s SelectedItem.tag.display{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■"},{"color":"dark_gray","text":"□□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']} run tag @s add flbc.h3
execute if data entity @s SelectedItem.tag.display{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■■"},{"color":"dark_gray","text":"□"},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']} run tag @s add flbc.h4
execute if data entity @s SelectedItem.tag.display{Lore:['{"italic":false,"color":"dark_purple","extra":[{"color":"yellow","text":"■■■■■"},{"color":"dark_gray","text":""},{"color":"dark_purple","text":"] "}],"text":"Charge: ["}']} run tag @s add flbc.h5

execute if entity @s[tag=flbc.h1] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"■","color":"yellow"},{"text":"□□□□","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]
execute if entity @s[tag=flbc.h2] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"■■","color":"yellow"},{"text":"□□□","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]
execute if entity @s[tag=flbc.h3] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"■■■","color":"yellow"},{"text":"□□","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]
execute if entity @s[tag=flbc.h4] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"■■■■","color":"yellow"},{"text":"□","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]
execute if entity @s[tag=flbc.h5] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"■■■■■","color":"yellow"},{"text":"","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]

#loot table random chance to tag @s flbc.damage
execute if score -dist flbc matches 51.. run loot spawn ~ ~ ~ loot flashlight_by_creepermeyt:high_damage
execute if score -dist flbc matches ..50 run loot spawn ~ ~ ~ loot flashlight_by_creepermeyt:low_damage
tag @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"flbc_lootdelete"}'}}}}] add flbc.lootdelete
execute if entity @e[tag=flbc.lootdelete] run tag @s add flbc.damage
kill @e[type=item,tag=flbc.lootdelete]

execute if entity @s[tag=!flbc.damage] run tag @s remove flbc.h2
execute if entity @s[tag=!flbc.damage] run tag @s remove flbc.h3
execute if entity @s[tag=!flbc.damage] run tag @s remove flbc.h4
execute if entity @s[tag=!flbc.damage] run tag @s remove flbc.h5
execute if entity @s[tag=!flbc.damage] run return 0

playsound minecraft:block.beacon.deactivate block @s ~ ~ ~ 0.3 0.4
execute if entity @s[tag=flbc.h1] run playsound minecraft:entity.item.break block @a[distance=..7] ~ ~ ~ 1 1.1
execute if entity @s[tag=flbc.h1] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=flbc.h1] run title @s actionbar ["",{"text":"Flashlight","color":"red"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_red"},{"text":"","color":"yellow"},{"text":"□□□□□","color":"dark_red"},{"text":"] ","color":"dark_red"}]
execute if entity @s[tag=flbc.h2] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:damagein2
execute if entity @s[tag=flbc.h3] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:damagein3
execute if entity @s[tag=flbc.h4] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:damagein4
execute if entity @s[tag=flbc.h5] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:damagein5

tag @s remove flbc.h2
tag @s remove flbc.h3
tag @s remove flbc.h4
tag @s remove flbc.h5
tag @s remove flbc.damage




