setblock 2035 152 2008 minecraft:stone_button[face=wall,facing=east]
scoreboard players add #hints niji 1
tellraw @a [{"text":"[ヒント①] ","color":"gold"},{"text":"青い名前のコメントだけを、時刻の古い順に並べよう","color":"white"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
