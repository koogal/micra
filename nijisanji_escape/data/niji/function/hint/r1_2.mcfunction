setblock 2011 152 2009 minecraft:stone_button[face=wall,facing=east]
scoreboard players add #hints niji 1
tellraw @a [{"text":"[ヒント②] ","color":"gold"},{"text":"カウンターの裏と、受付の内側も見た？","color":"white"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
