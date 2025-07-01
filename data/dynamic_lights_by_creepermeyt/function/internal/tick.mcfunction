## set dynamic light markers to 0
execute as @e[type=marker,tag=dynbc] run scoreboard players set @s dynbclevel 0


###########################################################
## Add Items, Entities, Effects, Compatibility to Marker ##
###########################################################

## entities on fire - only if they are close to a player
execute if score f dynbclevel matches 1 as @e[predicate=dynamic_lights_by_creepermeyt:on_fire] at @s if entity @a[distance=..48] run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:15}

## max of 16 tnt
execute if score t dynbclevel matches 1 at @e[type=tnt,sort=random,limit=16] unless entity @s[nbt={fuse:1s}] run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:15}

## glowing effect for players
execute if score g dynbclevel matches 1 as @a[predicate=dynamic_lights_by_creepermeyt:is_glowing] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:10}

## glow squids :3
execute if score s dynbclevel matches 1 at @e[type=glow_squid] if entity @a[distance=..48] run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:10}

## items
execute if score - dynbclevel matches 0 run function dynamic_lights_by_creepermeyt:internal/genforlvl {level:15}
execute if score - dynbclevel matches 0 run function dynamic_lights_by_creepermeyt:internal/genforlvl {level:14}
execute if score - dynbclevel matches 0 run function dynamic_lights_by_creepermeyt:internal/genforlvl {level:10}
execute if score - dynbclevel matches 0 run function dynamic_lights_by_creepermeyt:internal/genforlvl {level:7}
#Torches only
execute if score - dynbclevel matches 1 as @a[predicate=dynamic_lights_by_creepermeyt:mainhand_torch] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:14}
execute if score - dynbclevel matches 1 as @a[predicate=dynamic_lights_by_creepermeyt:offhand_torch] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:14}
execute if score - dynbclevel matches 1 as @e[type=item,predicate=dynamic_lights_by_creepermeyt:item_torch] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:14}

## compatibility
execute unless score - dynbclevel matches -2 run function dynamic_lights_by_creepermeyt:compatibility/compatibility


###################################
## Generation/Deletion of Lights ##
###################################
execute as @e[type=marker,tag=dynbc] at @s run function dynamic_lights_by_creepermeyt:internal/markersgen with entity @s data


## reschedule tick
execute unless score - dynbclevel matches -2 run schedule function dynamic_lights_by_creepermeyt:internal/tick 1t
execute if score - dynbclevel matches -2 run scoreboard objectives remove dynbclevel