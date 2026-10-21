# 鍵を持ったプレイヤーとして実行される
scoreboard players set #door2 escape 1
clear @s minecraft:tripwire_hook[minecraft:custom_data={escape_key:1b}]
fill 1020 151 1004 1020 152 1004 minecraft:air
tellraw @a {"text":"錆びた鍵で扉が開いた！","color":"green"}
execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1
