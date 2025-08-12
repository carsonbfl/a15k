# Generated with MC-Build

scoreboard players operation .math a15k_math = @s a15k_level
scoreboard players add .math a15k_math 6
scoreboard players operation .math a15k_math *= @s a15k_level
scoreboard players operation .math a15k_math += @s a15k_points
scoreboard players operation @s a15k_total_points = .math a15k_math