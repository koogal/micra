# 配信開始！ クリア
scoreboard players set #running niji 0
scoreboard players set #20 niji 20
scoreboard players set #60 niji 60
scoreboard players operation #sec niji = #time niji
scoreboard players operation #sec niji /= #20 niji
scoreboard players operation #min niji = #sec niji
scoreboard players operation #min niji /= #60 niji
scoreboard players operation #sec niji %= #60 niji
tp @a 2067.5 157 2006.5 90 0
title @a times 10 100 20
title @a subtitle [{"text":"クリアタイム ","color":"white"},{"score":{"name":"#min","objective":"niji"},"color":"yellow"},{"text":"分","color":"white"},{"score":{"name":"#sec","objective":"niji"},"color":"yellow"},{"text":"秒","color":"white"}]
title @a title {"text":"配信開始！","color":"light_purple","bold":true}
summon minecraft:firework_rocket 2064 158 2003 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16711680,16776960,65280,255,11141290],has_twinkle:true}]}}}}
summon minecraft:firework_rocket 2070 158 2009 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16711680,16776960,65280,255,11141290],has_twinkle:true}]}}}}
summon minecraft:firework_rocket 2067 158 2006 {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"large_ball",colors:[I;16711680,16776960,65280,255,11141290],has_twinkle:true}]}}}}
tellraw @a {"text":"――スタジオに明かりが戻り、記念配信は無事に始まった。","color":"light_purple"}
tellraw @a {"text":"「スタッフさん、ありがとう！ 最高の配信になったよ」","color":"white"}
tellraw @a [{"text":"使ったヒント: ","color":"gray"},{"score":{"name":"#hints","objective":"niji"},"color":"yellow"},{"text":" 回　もう一度遊ぶには /function niji:start","color":"gray"}]
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
