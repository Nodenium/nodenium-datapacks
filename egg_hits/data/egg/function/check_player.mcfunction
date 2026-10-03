
# Attacker
execute if entity @s[team=!cee_bots] on attacker run scoreboard players add @s egg_score 1
execute if entity @s[team=!cee_bots] on attacker run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0.5
execute if entity @s[team=!cee_bots] on attacker run title @s actionbar {"text":"+1 Egg Score","color":"green"}

# Hit player
execute if entity @s[team=!cee_bots,scores={egg_score=1..}] run scoreboard players remove @s egg_score 1
execute if entity @s[team=!cee_bots] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.5
execute if entity @s[team=!cee_bots] run title @s actionbar {"text":"-1 Egg Score","color":"red"}

execute if entity @s[team=cee_bots] on attacker run tellraw @s [{"color":"yellow","text":"Try hitting real players instead!"}]


advancement revoke @a only egg:egg_hit