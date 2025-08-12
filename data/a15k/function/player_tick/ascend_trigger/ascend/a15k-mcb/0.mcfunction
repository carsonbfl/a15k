# Generated with MC-Build

summon item ~ ~ ~ {Tags:["ascend_temp"],Item:{id:"minecraft:dirt",count:1}}
data modify entity @n[type=item,tag=ascend_temp] Item set from entity @s equipment.mainhand
tag @n[type=item,tag=ascend_temp] remove ascend_temp
particle minecraft:ominous_spawning ~ ~ ~ 1 1 1 10 100 force @a
particle minecraft:ominous_spawning ~ ~ ~ 1 1 1 .1 100 force @a
particle minecraft:enchant ~ ~ ~ 1 1 1 .01 100 force
particle minecraft:glow ~ ~ ~ 1 1 1 1 15 force
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 1 1 .01 15 force
particle minecraft:vault_connection ~ ~ ~ 1 1 1 .01 100 force
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 0
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 2
kill @s