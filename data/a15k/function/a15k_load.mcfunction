# Generated with MC-Build

## Scoreboards
scoreboard objectives add a15k_distance dummy
scoreboard objectives add a15k_required_level dummy
scoreboard objectives add a15k_math dummy
scoreboard objectives add a15k_level level {"text":"🧪","color":"green"}
scoreboard objectives setdisplay list a15k_level
scoreboard objectives setdisplay below_name a15k_level
scoreboard objectives add a15k_points dummy
scoreboard objectives add a15k_total_points dummy
scoreboard objectives add a15k_death deathCount
scoreboard objectives add a15k_probability dummy
scoreboard objectives add a15k_rolls dummy
scoreboard objectives add a15k_reload dummy
scoreboard objectives add a15k_stats trigger
scoreboard objectives add a15k_bar trigger
scoreboard objectives add a15k_bar_toggle dummy
## Constants
scoreboard players set .scale_overworld a15k_math 120
scoreboard players set .scale_nether a15k_math 15
scoreboard players set .5 a15k_math 5
scoreboard players set .2 a15k_math 2
scoreboard players set .9 a15k_math 9
scoreboard players set .15 a15k_math 15
scoreboard players set .15000 a15k_math 15000
scoreboard players set .math a15k_math 0
## Distance matrix
forceload add 0 0
summon item_display 0. 0 0. {UUID:[I;0,0,0,0]}
## Gamerules & Misc
gamerule maxCommandChainLength 999999999
scoreboard players add .reload a15k_reload 1
tellraw @a [{"color":"#00FFEE","text":"{"},{"color":"#00FFC0","text":"*"},{"color":"#00FF92","text":"*"},{"color":"#00FF64","text":"*"},{"color":"#00FF08","text":"}"},{"bold":true,"color":"green","text":" 🧪"},{"color":"gray","text":"⇄ "},{"color":"#05FF0D","text":"A"},{"color":"#05F94A","text":"1"},{"color":"#05F386","text":"5"},{"color":"#05E6FF","text":"K "},{"color":"yellow","text":"(Re)-Initiated "},{"color":"green","score":{"name":".reload","objective":"a15k_reload"},"underlined":true},{"color":"yellow","text":" Reloads. "},{"color":"#05FF0D","text":"{"},{"color":"#04FD3D","text":"*"},{"color":"#03FC6E","text":"*"},{"color":"#02FA9E","text":"*"},{"color":"#00F7FF","text":"}"}]