setblock 2073 152 2002 minecraft:polished_blackstone_button[face=wall,facing=west]
scoreboard players set #hit niji 0
execute if score #hit niji matches 0 run function niji:studio/fail
