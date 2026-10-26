scoreboard players set #door2 niji 1
scoreboard players set #ok niji 1
fill 2034 151 2006 2034 152 2006 minecraft:air
tellraw @a {"text":"差し入れ完了！ 楽屋の扉が開いた","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
