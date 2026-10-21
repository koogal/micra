# ゲーム開始（何度でもやり直せる）
function escape:build

scoreboard players set #door1 escape 0
scoreboard players set #door2 escape 0
scoreboard players set #time escape 0
scoreboard players set #running escape 1

clear @a
effect clear @a
gamemode adventure @a
tp @a 1003.5 151 1004.5 -90 0

give @a minecraft:written_book[minecraft:written_book_content={title:"手紙",author:"???",pages:['"目が覚めると、知らない石の部屋にいた。\\n\\n3つの部屋の謎を解いて、ここから脱出せよ。\\n\\n看板をよく読むこと。"']}]

title @a times 10 60 20
title @a subtitle {"text":"3つの謎を解いて脱出せよ","color":"gray"}
title @a title {"text":"脱出ゲーム","color":"gold","bold":true}
playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 0.5
