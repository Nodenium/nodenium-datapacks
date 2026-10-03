tellraw @s[team=zombie] {text:"You are already infected!","color":red}
tellraw @s[team=!zombie] {text:"You became infected!","color":yellow}

team join zombie @s[team=!zombie]

scoreboard players set @s become_infected 0