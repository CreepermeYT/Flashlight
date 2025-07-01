#say 21
execute if score -d flbyc >= -dist flbyc run return 0

scoreboard players set -t flbyc 3
scoreboard players operation -dist flbyc -= -t flbyc
execute if score -d flbyc <= -dist flbyc if score -d flbyc >= -t flbyc run scoreboard players add -d flbyc 3
execute unless score -d flbyc <= -dist flbyc run scoreboard players add -d flbyc 1
execute unless score -d flbyc >= -t flbyc run scoreboard players add -d flbyc 1
scoreboard players operation -dist flbyc += -t flbyc

execute unless score -d flbyc <= -dist flbyc unless score -d flbyc >= -t flbyc run scoreboard players remove -d flbyc 1



#say 22

#set distance
execute store result storage flashlights_bycreepermeyt:flbyc dist int 1 run scoreboard players get -d flbyc

#set width
execute store result storage flashlights_bycreepermeyt:flbyc width double 0.055 run scoreboard players get -d flbyc

#set light lvl
execute store result score -l flbyc run scoreboard players get -g flbyc
scoreboard players operation -l flbyc *= -d flbyc
#add 50 to round up
scoreboard players set -t flbyc 50
scoreboard players operation -l flbyc += -t flbyc
scoreboard players set -t flbyc 100
scoreboard players operation -l flbyc /= -t flbyc
scoreboard players operation -l flbyc += -m flbyc
execute if score -l flbyc matches 16.. run scoreboard players set -l flbyc 15
execute store result storage flashlights_bycreepermeyt:flbyc lvl int 1 run scoreboard players get -l flbyc

#say 23
#set particles
execute store result score -p flbyc run scoreboard players get -pg flbyc
scoreboard players operation -p flbyc *= -d flbyc
execute if score -p flbyc matches ..0 run scoreboard players set -p flbyc 0
#60/100 chance of not generating particles
execute store result score -t flbyc run random value 1..100
execute if score -t flbyc matches ..60 run scoreboard players set -p flbyc 0
execute store result storage flashlights_bycreepermeyt:flbyc part double 0.003 run scoreboard players get -p flbyc
scoreboard players add -p flbyc 334
execute store result storage flashlights_bycreepermeyt:flbyc pcount int 0.003 run scoreboard players get -p flbyc

#say 24
#gen the light
function flashlights_bycreepermeyt:auto_focused/actual_gen_spot with storage flashlights_bycreepermeyt:flbyc

#say 25
execute if score -d flbyc < -dist flbyc run function flashlights_bycreepermeyt:auto_focused/actual_gen_line
#say 26