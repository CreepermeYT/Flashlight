execute unless score s flbc matches 0.. run return 0
scoreboard players set c flbc 1
execute align xyz as @e[tag=flbc.light,distance=...1] run function flashlight_by_creepermeyt:utils/compare

execute unless score c flbc matches 1 run return 1

execute align xyz run summon minecraft:marker ~ ~ ~ {Tags:[flbc.light,flbc.new,flbc.update]}
execute as @e[tag=flbc.new] store result score @s flbc run scoreboard players get s flbc
tag @e[tag=flbc.new] remove flbc.new

scoreboard players reset c flbc