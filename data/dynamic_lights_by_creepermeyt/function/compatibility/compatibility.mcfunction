#############################
# ADD CUSTOM DYNAMIC LIGHTS #
# OR DATAPACK COMPATIBILITY #
#############################
## This .mcfunction will run in the right time to generate 
## custom dynamic lights under the conditions you specify


##  Example 1 :  ##
#-  will make every player generate a dynamic light level 7 at their position  -#
#-  (disabled with a '#' for obvious reasons)  -#
#execute at @a run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:7}


##  Example 2 :  ##
#-  will disable dynamic lights of every player at their position  -#
#-  (disabled with a '#' for obvious reasons)  -#
#execute at @a run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:0}


##  Example 3 :  ##
#-  will make every player with a dragon egg generate a dynamic light level 9 at their position  -#
#-  (not disabled with a '#' because its an easter egg c:)  -#
execute at @a[predicate=dynamic_lights_by_creepermeyt:mainhand_easteregg] run function dynamic_lights_by_creepermeyt:internal/dynamiclight {level:9}


##  Example 4 :  ##
#-  will run another datapack's own dynamiclight function  -#
#-  (not disabled with a '#' because datapack doesn't exist, nothing happens)  -#
function anotherdatapack:generatedynamiclights


####################
## NOT AN EXAMPLE ##  (enables actual flashlight datapack compatibility)
####################
execute if score fl dynbclevel matches 1 run function flashlights_bycreepermeyt:generatedynamiclights
