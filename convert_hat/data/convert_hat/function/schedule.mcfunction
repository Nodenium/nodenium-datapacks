schedule function convert_hat:schedule 4t
execute as @a[scores={convert_hat=1..}] run function convert_hat:trigger
scoreboard players enable @a convert_hat