# Generated with MC-Build

summon item ~ ~ ~ {Tags:["ascend_temp"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=ascend_temp] Item set from entity @s equipment.mainhand
tag @n[type=item,tag=ascend_temp] remove ascend_temp
function a15k:fx/ascend
kill @s