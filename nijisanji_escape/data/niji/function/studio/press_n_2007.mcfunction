setblock 2073 152 2007 minecraft:polished_blackstone_button[face=wall,facing=west]
scoreboard players set #hit niji 0
execute if score #seq niji matches 3 run scoreboard players set #hit niji 1
execute if score #hit niji matches 1 run function niji:clear
execute if score #hit niji matches 0 run function niji:studio/fail
