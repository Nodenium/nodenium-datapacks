

# Summons chickens
execute as @e[limit=3] run summon chicken -11 156 -33 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -13 156 -31 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -9 156 -31 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -9 156 -35 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -13 156 -35 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -7 156 -29 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -15 156 -29 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -7 156 -37 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -15 156 -37 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}

execute as @e[limit=3] run summon chicken -11 156 -29 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -11 156 -37 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -15 156 -33 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
execute as @e[limit=3] run summon chicken -7 156 -33 {DeathLootTable:"minecraft:empty",Invulnerable:1,Silent:1,NoAI:1,CustomName:"Killed",active_effects:[{id:wind_charged,amplifier:0,duration:999999,show_particles:0b},{id:invisibility,amplifier:0,duration:999999,show_particles:0b}]}
# Kills chickens
kill @e[name=Killed]

# Removes walls
schedule function spawn_explosion:remove_walls 20

# Removes floor
schedule function spawn_explosion:remove_floor 40

# Give everyone resistance
effect give @a resistance 20 255

# Set world spawn
setworldspawn 144 149 48