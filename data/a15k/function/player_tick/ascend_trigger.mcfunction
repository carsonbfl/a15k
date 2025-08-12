# Generated with MC-Build

# Summon armor stand
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ascend_stand"]}
# Put ascension item in mainhand of armorstand
data modify entity @n[type=minecraft:armor_stand,tag=ascend_stand] equipment.mainhand set from entity @s SelectedItem
# Set tags and lore via macro
data modify entity @n[type=minecraft:armor_stand,tag=ascend_stand] equipment.mainhand.components."minecraft:custom_data".ascend set value 1
execute store result storage minecraft:a15k level int 1 run scoreboard players get @s a15k_level
execute as @n[type=minecraft:armor_stand,tag=ascend_stand] run function a15k:player_tick/ascend_trigger/ascend_lore with storage minecraft:a15k {}
# Set rolls = level, delete item and xp, and init ascend chain
execute store result score @n[type=minecraft:armor_stand,tag=ascend_stand] a15k_rolls run scoreboard players get @s a15k_level
item modify entity @s weapon.mainhand a15k:set_count
xp set @s 0 levels
## ASCEND CHAIN 
execute as @n[type=minecraft:armor_stand,tag=ascend_stand] at @s run function a15k:player_tick/ascend_trigger/ascend with storage minecraft:a15k {}