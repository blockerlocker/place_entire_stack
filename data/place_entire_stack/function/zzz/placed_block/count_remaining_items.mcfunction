$execute store result score #item_count place_entire_stack if items entity @s container.* $(out)
$clear @s[gamemode=!creative] $(out)
execute if entity @s[gamemode=creative] run scoreboard players remove #item_count place_entire_stack 1