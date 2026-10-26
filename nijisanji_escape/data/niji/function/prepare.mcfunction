# 配布用ワールドの準備（作者が一度だけ実行して、そのままセーブして終了する）
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule keepInventory true
gamerule spawnRadius 0
difficulty peaceful
time set 18000
weather clear
setworldspawn 2003 151 2006
defaultgamemode adventure
function niji:build
scoreboard players set #running niji 0
scoreboard players set #pending niji 0
scoreboard players set #autostart niji 1
clear @a
gamemode adventure @a
tp @a 2003.5 151 2006.5 -90 0
tellraw @a [{"text":"[にじさんじ脱出] ","color":"light_purple"},{"text":"配布の準備ができました。このまま「セーブしてタイトルへ戻る」で終了し、ワールドのフォルダをzipにして配ってください。次にこのワールドを開いた人は、自動でゲームが始まります。","color":"white"}]
