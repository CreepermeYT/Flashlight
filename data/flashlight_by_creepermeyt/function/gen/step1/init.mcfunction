#tellraw @a ["","lvl:",{"score":{"name":"s","objective":"flbc"}}," ","w:",{"score":{"name":"-w","objective":"flbc"}}," ","pw:",{"score":{"name":"-pw","objective":"flbc"}}," ","pc:",{"score":{"name":"-p","objective":"flbc"}}," ",{"score":{"name":"-d","objective":"flbc"}}," / ",{"score":{"name":"-dist","objective":"flbc"}}]

execute if score -w flbc matches 0..4 run function flashlight_by_creepermeyt:gen/step2/step20
execute if score -w flbc matches 5..9 run function flashlight_by_creepermeyt:gen/step2/step205
execute if score -w flbc matches 10..14 run function flashlight_by_creepermeyt:gen/step2/step21
execute if score -w flbc matches 15..19 run function flashlight_by_creepermeyt:gen/step2/step215
execute if score -w flbc matches 20..24 run function flashlight_by_creepermeyt:gen/step2/step22
execute if score -w flbc matches 25..29 run function flashlight_by_creepermeyt:gen/step2/step225
execute if score -w flbc matches 30..34 run function flashlight_by_creepermeyt:gen/step2/step23
execute if score -w flbc matches 35..39 run function flashlight_by_creepermeyt:gen/step2/step235
execute if score -w flbc matches 40..44 run function flashlight_by_creepermeyt:gen/step2/step24
execute if score -w flbc matches 45..49 run function flashlight_by_creepermeyt:gen/step2/step245
execute if score -w flbc matches 50..54 run function flashlight_by_creepermeyt:gen/step2/step25
execute if score -w flbc matches 55..59 run function flashlight_by_creepermeyt:gen/step2/step255
execute if score -w flbc matches 60 run function flashlight_by_creepermeyt:gen/step2/step26

execute if score -pw flbc matches 0..2 run function flashlight_by_creepermeyt:gen/step3/step30
execute if score -pw flbc matches 3..6 run function flashlight_by_creepermeyt:gen/step3/step303
execute if score -pw flbc matches 7..9 run function flashlight_by_creepermeyt:gen/step3/step307
execute if score -pw flbc matches 10..19 run function flashlight_by_creepermeyt:gen/step3/step31
execute if score -pw flbc matches 20..29 run function flashlight_by_creepermeyt:gen/step3/step32
execute if score -pw flbc matches 30..39 run function flashlight_by_creepermeyt:gen/step3/step33
execute if score -pw flbc matches 40..49 run function flashlight_by_creepermeyt:gen/step3/step34
execute if score -pw flbc matches 50..59 run function flashlight_by_creepermeyt:gen/step3/step35

#Step 1, init, determine width (0-6) for step 2 (0-5) for step 3
#Step 2, gen light with width
#Step 3, gen particles with width

