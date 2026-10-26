# 毎tick実行。ゲーム中だけ判定を動かす
execute if score #pending niji matches 1 if entity @a run function niji:autostart
execute if score #running niji matches 1 run function niji:game_tick
