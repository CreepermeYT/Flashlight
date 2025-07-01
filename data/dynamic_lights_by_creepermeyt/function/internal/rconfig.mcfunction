tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s "-----------------------------------------------------"
tellraw @s ["         < ",{"text":"Dynamic & Flash Lights","bold":true,"color":"yellow"},{"text":" By ","color":"gray"},{"bold":true,"text":"CreepermeYT"}," >"]
tellraw @s ""
execute if score f dynbclevel matches 1 run tellraw @s [ {"text":"          Entities on","color":"gray","bold":false},{"bold":true,"text":" Fire                         ","color":"gold"}, {"text": "[ ON ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_fire"}}]
execute if score f dynbclevel matches 0 run tellraw @s [ {"text":"          Entities on","color":"gray","bold":false},{"bold":true,"text":" Fire                        ","color":"gold"}, {"text": "[ OFF ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_fire"}}]
tellraw @s ""
execute if score t dynbclevel matches 1 run tellraw @s [ {"text":"          Lit ","color":"gray","bold":false},{"bold":true,"text":"TNT                                  ","color":"red"}, {"text": "[ ON ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_tnt"}}]
execute if score t dynbclevel matches 0 run tellraw @s [ {"text":"          Lit ","color":"gray","bold":false},{"bold":true,"text":"TNT                                 ","color":"red"}, {"text": "[ OFF ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_tnt"}}]
tellraw @s ""
execute if score s dynbclevel matches 1 run tellraw @s [ {"text":"          Glowing ","color":"gray","bold":false},{"bold":true,"text":"Glow Squid                     ","color":"blue"}, {"text": "[ ON ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_glowsquid"}}]
execute if score s dynbclevel matches 0 run tellraw @s [ {"text":"          Glowing ","color":"gray","bold":false},{"bold":true,"text":"Glow Squid                    ","color":"blue"}, {"text": "[ OFF ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_glowsquid"}}]
tellraw @s ""
execute if score g dynbclevel matches 1 run tellraw @s [ {"text":"          Entities with","color":"gray","bold":false},{"bold":true,"text":" Glowing                    ","color":"gray"}, {"text": "[ ON ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_glowing"}}]
execute if score g dynbclevel matches 0 run tellraw @s [ {"text":"          Entities with","color":"gray","bold":false},{"bold":true,"text":" Glowing                   ","color":"gray"}, {"text": "[ OFF ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_glowing"}}]
tellraw @s ""
execute if score - dynbclevel matches 0 run tellraw @s [ {"text":"          Items with ","color":"gray","bold":false},{"text":"Dynamic Lights:         ","color":"yellow"}, {"text": "[ ALL ITEMS ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_optimization"}}]
execute if score - dynbclevel matches 1 run tellraw @s [ {"text":"          Items with ","color":"gray","bold":false},{"text":"Dynamic Lights:   ","color":"yellow"}, {"text": "[ TORCHES ONLY ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_optimization"}}]
execute if score - dynbclevel matches -1 run tellraw @s [ {"text":"          Items with ","color":"gray","bold":false},{"text":"Dynamic Lights:            ","color":"yellow"}, {"text": "[ NOTHING ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_optimization"}}]
tellraw @s ""
execute if score fl dynbclevel matches 1 run tellraw @s [ {"text":"        Flashlights                            ","color":"yellow","bold":true},{"text": "[ ON ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_flashlight"}}]
execute if score fl dynbclevel matches 0 run tellraw @s [ {"text":"        Flashlights                           ","color":"yellow","bold":true},{"text": "[ OFF ]","color":"white","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.toggle_flashlight"}}]
tellraw @s ""
tellraw @s {"text":"                       [ UNINSTALL ]","color":"red","bold":true,"clickEvent": {"action": "run_command", "value": "/function dynamic_lights_by_creepermeyt:.uninstall"}}
tellraw @s ""



playsound ui.button.click master @s