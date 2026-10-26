# 毎tick実行。ゲーム中だけ判定を動かす
execute if score #pending niji matches 1 if entity @a run function niji:autostart
# /trigger restart で誰でも最初からやり直せる（チートOFFでも使える）
scoreboard players enable @a restart
execute if entity @a[scores={restart=1..}] run function niji:start
scoreboard players set @a restart 0
execute if score #running niji matches 1 run function niji:game_tick
