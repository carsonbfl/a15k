# Generated with MC-Build

execute store result score @s a15k_math run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:breach"
scoreboard players add @s a15k_math 1
execute store result storage minecraft:a15k ascend int 1 run scoreboard players get @s a15k_math
data modify entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:breach" set from storage minecraft:a15k ascend