setblock 2073 152 2003 minecraft:polished_blackstone_button[face=wall,facing=west]
scoreboard players set #hit niji 0
execute if score #seq niji matches 2 run scoreboard players set #hit niji 1
execute if score #hit niji matches 1 run function niji:studio/good
execute if score #hit niji matches 0 run function niji:studio/fail
