setblock 2035 152 2010 minecraft:stone_button[face=wall,facing=east]
scoreboard players add #hints niji 1
tellraw @a [{"text":"[ヒント③] ","color":"gold"},{"text":"マイクON・カメラOFF・BGM OFF・照明ON","color":"white"}]
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
