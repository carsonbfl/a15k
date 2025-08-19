# Generated with MC-Build

execute store result score @s a15k_tmp run data get entity @s equipment.offhand.count
scoreboard players operation @s a15k_math *= @s a15k_tmp
execute store result storage minecraft:a15k points int 1 run scoreboard players get @s a15k_math
function a15k:shard_points with storage minecraft:a15k
function a15k:shard_mult_use_offhand