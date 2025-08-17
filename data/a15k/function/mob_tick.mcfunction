# Generated with MC-Build

## Tag & position scale
tag @s add a15k_mob
execute store result storage minecraft:a15k x float 1 run data get entity @s Pos[0] 1
execute store result storage minecraft:a15k y float 1 run data get entity @s Pos[1] 1
execute store result storage minecraft:a15k z float 1 run data get entity @s Pos[2] 1
function a15k:global_distance with storage minecraft:a15k
## Scale 2x at 15000 levels
execute store result storage minecraft:a15k mob_mult double 0.0000666667 run scoreboard players get @s a15k_required_level
execute store result storage minecraft:a15k mob_floor double 0.0015 run scoreboard players get @s a15k_required_level
scoreboard players reset @s a15k_required_level
function a15k:mob_tick/mob_attributes with storage minecraft:a15k {}