# データパック読み込み時に実行される
scoreboard objectives add escape dummy
execute unless score #running escape matches 0.. run scoreboard players set #running escape 0

# ステージのある場所を常に読み込んでおく
forceload add 1000 1000 1030 1008

tellraw @a [{"text":"[脱出ゲーム] ","color":"gold"},{"text":"読み込み完了！ /function escape:start でゲーム開始","color":"white"}]
