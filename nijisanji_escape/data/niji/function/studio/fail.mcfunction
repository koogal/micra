scoreboard players set #seq niji 0
tellraw @a {"text":"ブツッ…「配信事故です！」 最初からやり直し","color":"red"}
execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5
