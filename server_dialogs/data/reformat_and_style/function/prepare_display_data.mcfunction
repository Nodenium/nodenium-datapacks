$data modify storage reformat_and_style:variables shulker_mode set value $(shulker_mode)
execute if predicate reformat_and_style:not_shulker run data modify storage reformat_and_style:variables shulker_mode set value 0
$data modify storage reformat_and_style:variables item_model set value "$(item_model)"
$data modify storage reformat_and_style:variables tooltip_style set value "$(tooltip_style)"

# item model
execute if data storage reformat_and_style:variables {shulker_mode:0} if data storage reformat_and_style:variables {item_model:""} run function reformat_and_style:reset_component {component:"item_model"}
$execute if data storage reformat_and_style:variables {shulker_mode:0} unless data storage reformat_and_style:variables {item_model:""} run function reformat_and_style:apply_component {input:"$(item_model)",component:"item_model"}

execute if data storage reformat_and_style:variables {shulker_mode:1} if data storage reformat_and_style:variables {item_model:""} run function reformat_and_style:reset_component_shulker {component:"item_model"}
$execute if data storage reformat_and_style:variables {shulker_mode:1} unless data storage reformat_and_style:variables {item_model:""} run function reformat_and_style:apply_component_shulker {input:"$(item_model)",component:"item_model"}

# tooltip style
execute if data storage reformat_and_style:variables {shulker_mode:0} if data storage reformat_and_style:variables {tooltip_style:""} run function reformat_and_style:reset_component {component:"tooltip_style"}
$execute if data storage reformat_and_style:variables {shulker_mode:0} unless data storage reformat_and_style:variables {tooltip_style:""} run function reformat_and_style:apply_component {input:"$(tooltip_style)",component:"tooltip_style"}

execute if data storage reformat_and_style:variables {shulker_mode:1} if data storage reformat_and_style:variables {tooltip_style:""} run function reformat_and_style:reset_component_shulker {component:"tooltip_style"}
$execute if data storage reformat_and_style:variables {shulker_mode:1} unless data storage reformat_and_style:variables {tooltip_style:""} run function reformat_and_style:apply_component_shulker {input:"$(tooltip_style)",component:"tooltip_style"}

function reformat_and_style:success