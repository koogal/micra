# データパック読み込み時に実行される
scoreboard objectives add niji dummy
scoreboard objectives add code trigger
scoreboard objectives add restart trigger
execute unless score #running niji matches 0.. run scoreboard players set #running niji 0
execute unless score #init niji matches 1 run function niji:first_load
forceload add 2000 2000 2074 2012
tellraw @a [{"text":"[にじさんじ脱出] ","color":"light_purple"},{"text":"読み込み完了！","color":"white"}]
