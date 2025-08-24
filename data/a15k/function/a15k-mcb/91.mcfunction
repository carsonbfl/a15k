# Generated with MC-Build

## current level -> a15k_math
execute store result score @s a15k_math run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:thorns"
scoreboard players remove @s a15k_rolls 1
## only attempt if current level < group cap g[0]
execute unless score @s a15k_math matches 255.. run function a15k:a15k-mcb/92