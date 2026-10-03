summon item ~3 ~ ~ {Item:{id:"minecraft:stone"},PickupDelay:-1,Tags:["selected_item_copy"]}

data modify entity @e[type=item,tag=selected_item_copy,limit=1] Item set from entity @s SelectedItem


$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:0}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:1}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:2}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:3}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:4}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:5}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:6}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:7}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:8}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:9}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:10}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:11}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:12}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:13}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:14}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:15}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:16}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:17}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:18}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:19}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:20}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:21}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:22}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:23}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:24}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:25}].item.components.minecraft:$(component)
$data remove entity @e[tag=selected_item_copy,limit=1] Item.components.minecraft:container.[{slot:26}].item.components.minecraft:$(component)


item replace entity @s weapon.mainhand from entity @e[type=item,tag=selected_item_copy,limit=1] contents

kill @e[type=item,tag=selected_item_copy]