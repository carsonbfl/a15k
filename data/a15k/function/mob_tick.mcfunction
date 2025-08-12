# Generated with MC-Build

## TAG & POSITION SCALE
tag @s add a15k_mob
execute store result storage minecraft:a15k x float 1 run data get entity @s Pos[0] 1
execute store result storage minecraft:a15k y float 1 run data get entity @s Pos[1] 1
execute store result storage minecraft:a15k z float 1 run data get entity @s Pos[2] 1
function a15k:global_distance with storage minecraft:a15k
## SCALING -> ATTRIBUTES
execute store result storage minecraft:a15k mob_armor double .005 run scoreboard players get @s a15k_required_level
execute store result storage minecraft:a15k mob_armortoughness double .003 run scoreboard players get @s a15k_required_level
execute store result storage minecraft:a15k mob_dmg double .002 run scoreboard players get @s a15k_required_level
execute store result storage minecraft:a15k mob_knockback double .001 run scoreboard players get @s a15k_required_level
execute store result storage minecraft:a15k mob_speed double .00004 run scoreboard players get @s a15k_required_level
scoreboard players reset @s a15k_required_level
function a15k:mob_tick/mob_attributes with storage minecraft:a15k {}