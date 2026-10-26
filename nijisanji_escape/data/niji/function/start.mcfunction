# ゲーム開始（何度でもやり直せる）
function niji:build
scoreboard players set #door0 niji 0
scoreboard players set #door1 niji 0
scoreboard players set #door2 niji 0
scoreboard players set #door3 niji 0
scoreboard players set #door4 niji 0
scoreboard players set #locker niji 0
scoreboard players set #seq niji 0
scoreboard players set #time niji 0
scoreboard players set #hints niji 0
scoreboard players set #running niji 1
scoreboard players set @a code 0
clear @a
effect clear @a
gamemode adventure @a
tp @a 2003.5 151 2006.5 -90 0
give @a minecraft:written_book[minecraft:written_book_content={title:"はじめに",author:"スタジオ",pages:['"今日はにじさんじ配信スタジオでの初出勤日。\\n\\n深夜0時からは大事な記念配信がある。\\n\\nところが停電でセキュリティが誤作動し、扉が全部ロックされてしまった！"','"ライバーさんたちのメモを頼りにロックを解除し、記念配信データのかけら4つを集めて、メインスタジオで配信を始めよう。\\n\\n※非公式の二次創作です"']}]
title @a times 10 60 20
title @a subtitle {"text":"0時の記念配信までに脱出せよ","color":"gray"}
title @a title {"text":"深夜のスタジオ","color":"light_purple","bold":true}
execute as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 0.5
