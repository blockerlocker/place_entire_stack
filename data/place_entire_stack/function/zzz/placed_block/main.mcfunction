advancement revoke @s only place_entire_stack:place_block

function bldp:used_item/identify
function bldp:used_item/reset

function place_entire_stack:zzz/placed_block/count_remaining_items with storage bldp:used_item

execute unless score #item_count place_entire_stack matches 1.. run return fail

execute anchored eyes positioned ^ ^ ^ run function iris:get_target

function place_entire_stack:zzz/placed_block/rotation_snap