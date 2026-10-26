scoreboard players set #door3 niji 1
scoreboard players set #ok niji 1
fill 2046 151 2006 2046 152 2006 minecraft:air
tellraw @a {"text":"配信設定OK！ ブースの扉が開いた","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
