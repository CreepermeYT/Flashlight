#$say setting light $(dyn)

$fill ~ ~1 ~ ~ ~1 ~ light[level=$(dyn)] replace #minecraft:air
$fill ~ ~1 ~ ~ ~1 ~ light[level=$(dyn)] replace light[waterlogged=false]
$fill ~ ~1 ~ ~ ~1 ~ light[level=$(dyn),waterlogged=true] replace water[level=0]
$fill ~ ~1 ~ ~ ~1 ~ light[level=$(dyn),waterlogged=true] replace light[waterlogged=true]
execute if block ~ ~1 ~ light run return 1

$fill ~ ~ ~ ~ ~ ~ light[level=$(dyn)] replace #minecraft:air
$fill ~ ~ ~ ~ ~ ~ light[level=$(dyn)] replace light[waterlogged=false]
$fill ~ ~ ~ ~ ~ ~ light[level=$(dyn),waterlogged=true] replace water[level=0]
$fill ~ ~ ~ ~ ~ ~ light[level=$(dyn),waterlogged=true] replace light[waterlogged=true]
execute if block ~ ~ ~ light run return 1

$fill ~ ~2 ~ ~ ~2 ~ light[level=$(dyn)] replace #minecraft:air
$fill ~ ~2 ~ ~ ~2 ~ light[level=$(dyn)] replace light[waterlogged=false]
$fill ~ ~2 ~ ~ ~2 ~ light[level=$(dyn),waterlogged=true] replace water[level=0]
$fill ~ ~2 ~ ~ ~2 ~ light[level=$(dyn),waterlogged=true] replace light[waterlogged=true]
execute if block ~ ~2 ~ light run return 1
return 0