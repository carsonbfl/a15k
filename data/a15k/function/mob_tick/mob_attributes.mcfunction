# Generated with MC-Build

## Mult
$attribute @s minecraft:armor modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:armor_toughness modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:attack_knockback modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:knockback_resistance modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:max_health modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:movement_speed modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:flying_speed modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:attack_speed modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:follow_range modifier add a15k $(mob_mult) add_multiplied_total
$attribute @s minecraft:attack_damage modifier add a15k $(mob_mult) add_multiplied_total
## Heal to new max
execute store result storage minecraft:a15k mob_heal double 1 run attribute @s minecraft:max_health get 1
data modify entity @s Health set from storage minecraft:a15k mob_heal