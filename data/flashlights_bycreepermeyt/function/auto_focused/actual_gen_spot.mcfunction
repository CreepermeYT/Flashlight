#$say dist: $(dist) lvl: $(lvl)   part: $(part) c: $(pcount) w: $(width)
execute store result score -t flbyc run data get storage flashlights_bycreepermeyt:flbyc lvl 10
#say r1
$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^$(width) ^$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^-$(width) ^$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^-$(width) ^-$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^$(width) ^-$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
#say r2
execute store result score -t flbyc run data get storage flashlights_bycreepermeyt:flbyc part 10
#say r3
$execute unless score -t flbyc matches 0 positioned ^ ^ ^$(dist) run particle dust{color:[1.0,1.0,0.45],scale:.6} ~ ~ ~ $(part) $(part) $(part) 0 $(pcount) normal
#say r4


##$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^ ^ ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
#$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^$(width) ^$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
#$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^-$(width) ^$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
#$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^-$(width) ^-$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}
#$execute unless score -t flbyc matches 0 positioned ~ ~-1 ~ positioned ^$(width) ^-$(width) ^$(dist) run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:$(lvl)}



