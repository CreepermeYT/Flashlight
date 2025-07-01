execute if block ~ ~1 ~ light run tag @s add successfulerase
execute if entity @s[tag=successfulerase] run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:light[waterlogged=false]
execute if entity @s[tag=successfulerase] run fill ~ ~1 ~ ~ ~1 ~ water replace minecraft:light[waterlogged=true]
execute if entity @s[tag=successfulerase] run return 1

execute if block ~ ~ ~ light run tag @s add successfulerase
execute if entity @s[tag=successfulerase] run fill ~ ~ ~ ~ ~ ~ air replace minecraft:light[waterlogged=false]
execute if entity @s[tag=successfulerase] run fill ~ ~ ~ ~ ~ ~ water replace minecraft:light[waterlogged=true]
execute if entity @s[tag=successfulerase] run return 1

execute if block ~ ~2 ~ light run tag @s add successfulerase
execute if entity @s[tag=successfulerase] run fill ~ ~2 ~ ~ ~2 ~ air replace minecraft:light[waterlogged=false]
execute if entity @s[tag=successfulerase] run fill ~ ~2 ~ ~ ~2 ~ water replace minecraft:light[waterlogged=true]
execute if entity @s[tag=successfulerase] run return 1
tag @s add successfulerase