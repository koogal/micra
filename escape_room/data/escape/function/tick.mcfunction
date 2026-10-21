# 毎tick実行。ゲーム中だけ判定を動かす
execute if score #running escape matches 1 run function escape:game_tick
