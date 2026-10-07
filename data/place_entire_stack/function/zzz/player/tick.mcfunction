execute if predicate bldp:used_item run function place_entire_stack:zzz/placed_block/main

function iris:get_target

execute as @n[type=marker,tag=iris.targeted_block] at @s unless block ~ ~ ~ #replaceable run function place_entire_stack:zzz/placed_block/position_snap

tag @s remove place_entire_stack_selected_up
tag @s remove place_entire_stack_selected_west
tag @s remove place_entire_stack_selected_east
tag @s remove place_entire_stack_selected_north
tag @s remove place_entire_stack_selected_south
tag @s remove place_entire_stack_selected_down

execute if data storage iris:output TargetedFace{Direction:UP} run tag @s add place_entire_stack_selected_up
execute if data storage iris:output TargetedFace{Direction:WEST} run tag @s add place_entire_stack_selected_west
execute if data storage iris:output TargetedFace{Direction:EAST} run tag @s add place_entire_stack_selected_east
execute if data storage iris:output TargetedFace{Direction:NORTH} run tag @s add place_entire_stack_selected_north
execute if data storage iris:output TargetedFace{Direction:SOUTH} run tag @s add place_entire_stack_selected_south
execute if data storage iris:output TargetedFace{Direction:DOWN} run tag @s add place_entire_stack_selected_down

execute store result score @s place_entire_stack_x run data get entity @n[type=marker,tag=iris.targeted_block] Pos[0]
execute store result score @s place_entire_stack_y run data get entity @n[type=marker,tag=iris.targeted_block] Pos[1]
execute store result score @s place_entire_stack_z run data get entity @n[type=marker,tag=iris.targeted_block] Pos[2]