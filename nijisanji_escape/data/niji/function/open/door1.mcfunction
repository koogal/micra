scoreboard players set #door1 niji 1
scoreboard players set #ok niji 1
fill 2022 151 2006 2022 152 2006 minecraft:air
tellraw @a {"text":"入館コード認証。エントランスのロックが外れた！","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
