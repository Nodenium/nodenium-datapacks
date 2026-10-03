function reformat_and_style:anvil_scan/scan_player_x_z

execute unless entity @s[level=1..] if entity @s[gamemode=!creative] run tellraw @s {"text":"At least 1 experience level required!","color":"red"}
execute if entity @s[scores={anvil_nearby=0},gamemode=!creative] run tellraw @s {"text":"No anvil nearby!","color":"red"}
execute unless data entity @s SelectedItem run tellraw @s {"text":"You must be holding an item to rename or style it!","color":"red"}

execute unless entity @s[level=1..] if entity @s[gamemode=!creative] run dialog clear @s
execute if entity @s[scores={anvil_nearby=0},gamemode=!creative] run dialog clear @s
execute unless data entity @s SelectedItem run dialog clear @s

execute as @s[scores={anvil_nearby=1,set_custom_name=1},level=1..,gamemode=!creative] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_custom_name
execute as @s[gamemode=creative,scores={set_custom_name=1}] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_custom_name

execute as @s[scores={anvil_nearby=1,set_lore=1},level=1..,gamemode=!creative] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_lore
execute as @s[gamemode=creative,scores={set_lore=1}] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_lore

execute as @s[scores={anvil_nearby=1,set_display_data=1},level=1..,gamemode=!creative] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_display_data
execute as @s[gamemode=creative,scores={set_display_data=1}] if data entity @s SelectedItem run dialog show @s reformat_and_style:set_display_data

scoreboard players set @s anvil_nearby 0