execute if entity @s[tag=!flbc.mf] run scoreboard players reset @s flbc
execute if entity @s[tag=!flbc.mf] run return 0

#turn off
execute if entity @s[tag=flbc.mf,tag=flbc.mon] run tag @s add flbc.turnoff
execute if entity @s[tag=flbc.turnoff] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:turn_off
execute if entity @s[tag=flbc.turnoff] run title @s actionbar ["",{"text":"Flashlight","color":"aqua"},{"text":" - ","color":"dark_gray"},{"text":"Charge: [","color":"dark_purple","italic":false},{"text":"-OFF-","color":"dark_gray"},{"text":"] ","color":"dark_purple"}]

#turn on
execute if entity @s[tag=!flbc.turnoff] run item modify entity @s weapon.mainhand flashlight_by_creepermeyt:turn_on

scoreboard players reset @s flbc
tag @s remove flbc.turnoff