scoreboard players enable @a set_custom_name
execute as @a[scores={set_custom_name=1}] at @s run function reformat_and_style:anvil_scan/scan_for_anvil_and_xp
scoreboard players set @a set_custom_name 0

scoreboard players enable @a set_lore
execute as @a[scores={set_lore=1}] at @s run function reformat_and_style:anvil_scan/scan_for_anvil_and_xp
scoreboard players set @a set_lore 0

scoreboard players enable @a set_display_data
execute as @a[scores={set_display_data=1}] at @s run function reformat_and_style:anvil_scan/scan_for_anvil_and_xp
scoreboard players set @a set_display_data 0
