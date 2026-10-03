$data modify storage reformat_and_style:variables shulker_mode set value $(shulker_mode)
execute if predicate reformat_and_style:not_shulker run data modify storage reformat_and_style:variables shulker_mode set value 0
$data modify storage reformat_and_style:variables text set value "$(text)"

$execute if data storage reformat_and_style:variables {shulker_mode:0} if data storage reformat_and_style:variables {text:""} run function reformat_and_style:reset_component {component:"$(component)"}
$execute if data storage reformat_and_style:variables {shulker_mode:0} unless data storage reformat_and_style:variables {text:""} run function reformat_and_style:apply_text_component {text:"$(text)",color:$(color),bold:$(bold),italic:$(italic),component:"$(component)"}

$execute if data storage reformat_and_style:variables {shulker_mode:1} if data storage reformat_and_style:variables {text:""} run function reformat_and_style:reset_component_shulker {component:"$(component)"}
$execute if data storage reformat_and_style:variables {shulker_mode:1} unless data storage reformat_and_style:variables {text:""} run function reformat_and_style:apply_text_component_shulker {text:"$(text)",color:$(color),bold:$(bold),italic:$(italic),component:"$(component)"}

function reformat_and_style:success