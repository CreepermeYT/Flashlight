scoreboard players set -sg flbc 1

## if it is a multiple of 4
execute store result score -dt flbc run scoreboard players get -d flbc
scoreboard players set -t flbc 4
scoreboard players operation -dt flbc %= -t flbc
execute if score -dt flbc matches 0 run return 1

## if it is a multiple of 2 within 10 blocks
execute store result score -dt flbc run scoreboard players get -d flbc
scoreboard players set -t flbc 2
scoreboard players operation -dt flbc %= -t flbc
execute if score -dt flbc matches 0 if score -d flbc matches ..10 run return 1

## if it is within 3 blocks
execute if score -d flbc matches ..3 run return 1

scoreboard players set -sg flbc 0

## if it is within 3 blocks away from the target
scoreboard players remove -dist flbc 3
execute if score -d flbc >= -dist flbc run scoreboard players set -sg flbc 1
scoreboard players add -dist flbc 3