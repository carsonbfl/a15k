# Generated with MC-Build

scoreboard players operation .math a15k_math = @s a15k_level
scoreboard players operation .math a15k_math *= .9 a15k_math
scoreboard players remove .math a15k_math 325
scoreboard players operation .math a15k_math *= @s a15k_level
scoreboard players operation .math a15k_math /= .2 a15k_math
scoreboard players add .math a15k_math 2220
scoreboard players operation .math a15k_math += @s a15k_points
scoreboard players operation @s a15k_total_points = .math a15k_math