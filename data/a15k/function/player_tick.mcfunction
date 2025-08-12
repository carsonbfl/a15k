# Generated with MC-Build

## Enable Statistics & trigger tellraw
scoreboard players enable @s a15k_stats
scoreboard players enable @s a15k_bar
execute if score @s a15k_stats matches 1.. run function a15k:player_tick/stats
execute if score @s a15k_bar matches 1.. run function a15k:player_tick/bar
## Player Level -> Points
execute store result score @s a15k_points run xp query @s points
execute if score @s a15k_level matches 0 run function a15k:player_tick/lp1
execute if score @s a15k_level matches 1..16 run function a15k:player_tick/lp2
execute if score @s a15k_level matches 17..31 run function a15k:player_tick/lp3
execute if score @s a15k_level matches 32.. run function a15k:player_tick/lp4
## Player Position, Required Level, & Action bar 
execute store result storage minecraft:a15k x float 1 run data get entity @s Pos[0] 1
execute store result storage minecraft:a15k y float 1 run data get entity @s Pos[1] 1
execute store result storage minecraft:a15k z float 1 run data get entity @s Pos[2] 1
function a15k:global_distance with storage minecraft:a15k
execute if score @s[gamemode=!survival,tag=!a15k_op] a15k_level >= @s a15k_required_level run gamemode survival @s
execute if score @s[gamemode=!adventure,tag=!a15k_op] a15k_level < @s a15k_required_level run gamemode adventure @s
execute if entity @s[gamemode=survival] if score @s a15k_bar_toggle matches 0 run title @s actionbar [{"color":"dark_green","text":"🧪"},{"color":"white","score":{"name":"@s","objective":"a15k_required_level"}}," ",{"color":"gray","text":"⇄"},{"color":"white","score":{"name":"@s","objective":"a15k_distance"}}]
execute if entity @s[gamemode=creative] if score @s a15k_bar_toggle matches 0 run title @s actionbar [{"color":"dark_green","text":"🧪"},{"color":"white","score":{"name":"@s","objective":"a15k_required_level"}}," ",{"color":"gray","text":"⇄"},{"color":"white","score":{"name":"@s","objective":"a15k_distance"}}]
execute if entity @s[gamemode=adventure] if score @s a15k_bar_toggle matches 0 run title @s actionbar [{"color":"red","text":"🧪"},{"color":"white","score":{"name":"@s","objective":"a15k_required_level"}}," ",{"color":"gray","text":"⇄"},{"color":"white","score":{"name":"@s","objective":"a15k_distance"}}]
## Shard drop on death when level >= 15; Cluster drop on death when level >= 15000
execute if score @s a15k_death matches 1.. run function a15k:player_tick/player_death
## Ascensions when standing on enchantment table and level >= 1 while holding enchantable 
execute if predicate a15k:is_sneak_on_table if data entity @s SelectedItem.components."minecraft:enchantments" unless data entity @s SelectedItem.components."minecraft:custom_data".ascend if score @s a15k_level matches 1.. run function a15k:player_tick/ascend_trigger