# Generated with MC-Build

execute store result score @s a15k_math run data get entity @s SelectedItem.components."minecraft:custom_data".points 1
execute unless score @s a15k_math matches 33554431.. if predicate a15k:is_sneak run function a15k:shard_used_mainhand/a15k-mcb/99
execute unless predicate a15k:is_sneak run function a15k:shard_used_mainhand/a15k-mcb/100