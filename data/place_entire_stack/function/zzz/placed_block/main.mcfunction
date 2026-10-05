advancement revoke @s only place_entire_stack:item_used

execute unless entity @s[tag=place_entire_stack_confirm] run return fail

tag @s remove place_entire_stack_confirm

function bldp:used_item/identify
function bldp:used_item/reset

function place_entire_stack:zzz/placed_block/count_remaining_items with storage bldp:used_item

execute unless score #item_count place_entire_stack matches 1.. run return fail

execute store result storage place_entire_stack:temp all.x int 1 run scoreboard players get @s place_entire_stack_x
execute store result storage place_entire_stack:temp all.y int 1 run scoreboard players get @s place_entire_stack_y
execute store result storage place_entire_stack:temp all.z int 1 run scoreboard players get @s place_entire_stack_z

summon marker ~ ~ ~ {UUID:uuid('e35ad6db-fd01-4f75-b3e6-ca9ce020420e')}
tp e35ad6db-fd01-4f75-b3e6-ca9ce020420e ~ ~ ~ ~ ~
execute if predicate {type:"entity_properties",entity:"this",predicate:{"type_specific/player":{input:{sneak:false}}}} run function place_entire_stack:zzz/placed_block/precise_rotation_snap
execute if predicate {type:"entity_properties",entity:"this",predicate:{"type_specific/player":{input:{sneak:true}}}} run function place_entire_stack:zzz/placed_block/face_rotation_snap

function place_entire_stack:zzz/placed_block/commit with storage place_entire_stack:temp all

data remove storage place_entire_stack:temp all