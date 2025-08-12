# Generated with MC-Build

execute store result storage minecraft:a15k points int 1 run scoreboard players get @s a15k_total_points
execute store result storage minecraft:a15k level int 1 run scoreboard players get @s a15k_level
function a15k:player_tick/player_death/player_death_min/shard_spawn with storage minecraft:a15k {}