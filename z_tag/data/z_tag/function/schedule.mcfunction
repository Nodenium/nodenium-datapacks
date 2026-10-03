schedule function z_tag:schedule 4t
execute as @a[scores={become_infected=1..}] run function z_tag:trigger
scoreboard players enable @a become_infected