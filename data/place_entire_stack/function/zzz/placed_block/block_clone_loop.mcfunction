clone ~ ~ ~ ~ ~ ~ ^ ^ ^1
scoreboard players remove #item_count place_entire_stack 1
execute if score #item_count place_entire_stack matches 1.. positioned ^ ^ ^1 run function place_entire_stack:zzz/placed_block/block_clone_loop