# データパック読み込み時に実行される
scoreboard objectives add niji dummy
scoreboard objectives add code trigger
execute unless score #running niji matches 0.. run scoreboard players set #running niji 0
execute if score #autostart niji matches 1 run scoreboard players set #pending niji 1
forceload add 2000 2000 2074 2012
tellraw @a [{"text":"[にじさんじ脱出] ","color":"light_purple"},{"text":"読み込み完了！ /function niji:start でゲーム開始","color":"white"}]
