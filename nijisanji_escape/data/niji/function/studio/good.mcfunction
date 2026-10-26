scoreboard players add #seq niji 1
title @a actionbar [{"text":"配信準備 ","color":"light_purple"},{"score":{"name":"#seq","objective":"niji"},"color":"yellow"},{"text":" / 4","color":"light_purple"}]
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
