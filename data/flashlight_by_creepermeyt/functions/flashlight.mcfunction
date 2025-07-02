execute anchored eyes positioned ^ ^ ^ run function flashlight_by_creepermeyt:utils/get_dist
execute if entity @s[tag=flbc.oon] run function flashlight_by_creepermeyt:item/damage_offhand
execute if entity @s[tag=flbc.mon,tag=!flbc.oon] run function flashlight_by_creepermeyt:item/damage_mainhand

execute if entity @s[tag=!flbc.h1] run scoreboard players set -min flbc 9
execute if entity @s[tag=!flbc.h1] run scoreboard players set -max flbc 15

execute if entity @s[tag=flbc.h1] run loot spawn ~ ~ ~ loot flashlight_by_creepermeyt:flicker
execute if entity @s[tag=flbc.h1] run tag @e[type=item,nbt={Item:{tag:{display:{Name:'{"text":"flbc_lootdelete"}'}}}}] add flbc.lootdelete
execute if entity @s[tag=flbc.h1] if entity @e[tag=flbc.lootdelete] run tag @s add flbc.flicker
execute if entity @s[tag=flbc.h1] run kill @e[type=item,tag=flbc.lootdelete]

execute if entity @s[tag=flbc.h1,tag=flbc.flicker] run scoreboard players set -min flbc 5
execute if entity @s[tag=flbc.h1,tag=flbc.flicker] run scoreboard players set -max flbc 10
execute if entity @s[tag=flbc.h1,tag=!flbc.flicker] run scoreboard players set -min flbc 7
execute if entity @s[tag=flbc.h1,tag=!flbc.flicker] run scoreboard players set -max flbc 12

tag @s remove flbc.flicker


execute anchored eyes positioned ~ ~1 ~ run function flashlight_by_creepermeyt:utils/gen_line
tag @s remove flbc.h1