scoreboard players set #door1 escape 1
fill 1010 151 1004 1010 152 1004 minecraft:air
tellraw @a {"text":"ガチャッ…扉が開いた！","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
