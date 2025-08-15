# Generated with MC-Build

execute store result score @s a15k_math run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:looting"
scoreboard players remove @s a15k_rolls 1
execute unless score @s a15k_math matches 255.. run function a15k:a15k-mcb/50