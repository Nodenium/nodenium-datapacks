schedule function status:schedule 4t
execute as @a[scores={recording=1..}] run function status:trigger_recording
scoreboard players enable @a recording
execute as @a[scores={streaming=1..}] run function status:trigger_streaming
scoreboard players enable @a streaming
execute as @a[scores={no_recording=1..}] run function status:trigger_no_recording
scoreboard players enable @a no_recording
