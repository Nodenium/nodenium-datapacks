summon item ~3 ~ ~ {Item:{id:"minecraft:stone"},PickupDelay:-1,Tags:["selected_item_copy"]}

data modify entity @e[type=item,tag=selected_item_copy,limit=1] Item set from entity @s SelectedItem
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:$(component)
item replace entity @s weapon.mainhand from entity @e[type=item,tag=selected_item_copy,limit=1] contents

kill @e[type=item,tag=selected_item_copy]