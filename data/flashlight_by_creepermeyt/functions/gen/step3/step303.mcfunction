#Step 3
#Gen particles by count

execute if score -p flbc matches 1 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 1 normal
execute if score -p flbc matches 2 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 2 normal
execute if score -p flbc matches 3 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 3 normal
execute if score -p flbc matches 4 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 4 normal
execute if score -p flbc matches 5 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 5 normal
execute if score -p flbc matches 6 run particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0.4 0.4 0.4 0 6 normal

#>1.20.6 particle dust{color:[1.0,1.0,0.45],scale:.6} ~ ~ ~ 0 0 0 0 1 normal
#<1.20.6 particle dust 1.0 1.0 0.45 .6 ~ ~ ~ 0 0 0 0 1 normal