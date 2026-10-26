setblock 2035 152 2009 minecraft:stone_button[face=wall,facing=east]
scoreboard players add #hints niji 1
tellraw @a [{"text":"[ヒント②] ","color":"gold"},{"text":"頭文字は「よんななにいち」。ロッカーを開けたら、伝言はカメラから決めよう","color":"white"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
