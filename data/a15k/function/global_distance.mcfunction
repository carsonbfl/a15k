# Generated with MC-Build

## DISTANCE TO ORIGIN- scale[0] = √((x₂ - x₁)² + (y₂ - y₁)² + (z₂ - z₁)²); where xyz1 is 0,0,0 and xyz2 is entitypos
$data modify entity 0-0-0-0-0 transformation set value [$(x),0f,0f,0f,$(y),0f,0f,0f,$(z),0f,0f,0f,0f,0f,0f,1f]
data modify storage minecraft:a15k distance set from entity 0-0-0-0-0 transformation.scale[0]
execute if entity @s[type=minecraft:player] run execute store result score @s a15k_distance run data get storage minecraft:a15k distance
execute store result score @s a15k_required_level run data get storage minecraft:a15k distance
execute if dimension minecraft:overworld run scoreboard players operation @s a15k_required_level /= .scale_overworld a15k_math
execute if dimension minecraft:the_nether run scoreboard players operation @s a15k_required_level /= .scale_nether a15k_math
execute if dimension minecraft:the_end run function a15k:a15k-mcb/0