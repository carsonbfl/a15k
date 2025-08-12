# Generated with MC-Build

scoreboard players reset @s a15k_death
execute if score @s a15k_total_points matches 315.. unless score @s a15k_level matches 15000.. run function a15k:player_tick/player_death/player_death_min
execute if score @s a15k_level matches 15000.. run function a15k:player_tick/player_death/player_death_max