#if delete
#replace with new, erase delete

#if not delete
#check if larger, replace with larger


execute if entity @s[tag=flbc.delete] unless score s flbc = @s flbc run scoreboard players set @s flbc 0 
execute if entity @s[tag=flbc.delete] run tag @s remove flbc.delete

scoreboard players reset c flbc
execute if score s flbc <= @s flbc run return 0

tag @s add flbc.update
execute store result score @s flbc run scoreboard players get s flbc
