# Generated with MC-Build

execute store result score @s a15k_math run data get entity @s equipment.mainhand.components."minecraft:enchantments"."minecraft:swift_sneak"
scoreboard players remove @s a15k_rolls 1
execute unless score @s a15k_math matches 5.. run function a15k:a15k-mcb/11