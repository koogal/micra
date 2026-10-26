scoreboard players set #door4 niji 1
scoreboard players set #ok niji 1
fill 2060 151 2006 2060 152 2006 minecraft:air
tellraw @a {"text":"パスワード認証。編集室のロックが外れた！","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
