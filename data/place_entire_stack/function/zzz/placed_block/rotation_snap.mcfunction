execute if entity @s[y_rotation=-22.5..22.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s 0 ~
execute if entity @s[y_rotation=22.5..67.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s 45 ~
execute if entity @s[y_rotation=67.5..112.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s 90 ~
execute if entity @s[y_rotation=112.5..157.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s 135 ~
execute if entity @s[y_rotation=157.5..-157.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s 180 ~
execute if entity @s[y_rotation=-157.5..-112.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s -135 ~
execute if entity @s[y_rotation=-112.5..-67.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s -90 ~
execute if entity @s[y_rotation=-67.5..-22.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s -45 ~

execute if entity @s[x_rotation=-90..-67.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s ~ -90
execute if entity @s[x_rotation=-67.5..-22.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s ~ -45
execute if entity @s[x_rotation=-22.5..22.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s ~ 0
execute if entity @s[x_rotation=22.5..67.5] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s ~ 45
execute if entity @s[x_rotation=67.5..90] as @n[type=marker,tag=iris.targeted_block] at @s run rotate @s ~ 90

execute at @n[type=marker,tag=iris.targeted_block] run function place_entire_stack:zzz/placed_block/block_clone_loop