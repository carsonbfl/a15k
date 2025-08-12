# Generated with MC-Build

advancement revoke @s only a15k:kill_mob
## Required level * 15
execute store result storage minecraft:a15k mob_level int 15 run scoreboard players get @s a15k_required_level
execute unless score @s a15k_required_level matches 0 run function a15k:mob_drop with storage minecraft:a15k {}