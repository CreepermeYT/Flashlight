#MAINHAND
$execute as @a[predicate=dynamic_lights_by_creepermeyt:mainhand_lightlvl_$(level)] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(level)}

#OFFHAND
$execute as @a[predicate=dynamic_lights_by_creepermeyt:offhand_lightlvl_$(level)] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(level)}

#ITEMS
$execute as @e[type=item,predicate=dynamic_lights_by_creepermeyt:item_lightlvl_$(level)] at @s run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(level)}