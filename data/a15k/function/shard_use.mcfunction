# Generated with MC-Build

execute if predicate a15k:shard_offhand unless predicate a15k:shard_mainhand run function a15k:shard_used_offhand
execute if predicate a15k:shard_mainhand run function a15k:shard_used_mainhand
advancement revoke @s only a15k:shard_use
execute positioned ~ ~.25 ~ rotated as @s rotated ~ 0 run function a15k:fx/shard