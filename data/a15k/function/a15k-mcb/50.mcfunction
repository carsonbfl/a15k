# Generated with MC-Build

execute store result score @s a15k_probability run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:looting"
scoreboard players operation @s a15k_probability *= @s a15k_probability
scoreboard players operation @s a15k_probability *= @s a15k_probability
scoreboard players operation @s a15k_probability += .c15 a15k_math
execute store result storage minecraft:a15k probability int 1 run scoreboard players get @s a15k_probability
function a15k:probability_macro with storage minecraft:a15k
execute if score @s a15k_probability matches 0 run function a15k:a15k-mcb/51