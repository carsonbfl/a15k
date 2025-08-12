# Generated with MC-Build

## Run iterator
function a15k:ascend with storage minecraft:a15k
## Loop or End 
execute if score @s a15k_rolls matches 0 run function a15k:player_tick/ascend_trigger/ascend/end_ascend
execute if score @s a15k_rolls matches 1.. run function a15k:player_tick/ascend_trigger/ascend