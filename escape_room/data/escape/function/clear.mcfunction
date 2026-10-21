# クリア！
scoreboard players set #running escape 0

# 経過秒数 = tick / 20
scoreboard players set #20 escape 20
scoreboard players operation #sec escape = #time escape
scoreboard players operation #sec escape /= #20 escape

title @a times 10 80 20
title @a subtitle [{"text":"クリアタイム: ","color":"white"},{"score":{"name":"#sec","objective":"escape"},"color":"yellow"},{"text":" 秒","color":"white"}]
title @a title {"text":"脱出成功！","color":"gold","bold":true}
tellraw @a [{"text":"[脱出ゲーム] ","color":"gold"},{"selector":"@s"},{"text":" が脱出した！ もう一度遊ぶには /function escape:start","color":"white"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
