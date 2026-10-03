# set tags
execute if entity @s[team=uninfected] on attacker if entity @s[team=zombie] run tag @s add z_tagger
execute if entity @s[team=uninfected] run tag @s add z_tagged

# announce in chat
execute if entity @s[team=uninfected] run tellraw @a [{"selector":"@p[tag=z_tagged]","color":"green"},{"text":" was infected by "},{"selector":"@p[tag=z_tagger]","color":"green"},{"text":"!"}]

# playsound
execute if entity @s[team=uninfected] on attacker if entity @s[team=zombie] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 1 0.7
execute if entity @s[team=uninfected] run playsound minecraft:entity.zombie.infect player @s ~ ~ ~ 1 0.7
execute if entity @s[team=uninfected] on attacker if entity @s[team=zombie] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.3 0.5
execute if entity @s[team=uninfected] run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 0.3 0.5

# set teams
execute if entity @s[team=uninfected] run team join zombie @s

# cleanup
advancement revoke @a only z_tag:z_tagged
tag @s remove z_tagged
execute on attacker run tag @s remove z_tagger