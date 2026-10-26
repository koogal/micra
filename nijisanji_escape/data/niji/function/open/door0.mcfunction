scoreboard players set #door0 niji 1
scoreboard players set #ok niji 1
fill 2010 151 2006 2010 152 2006 minecraft:air
tellraw @a {"text":"練習成功！ 扉が開いた。ここからが本番だ","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
