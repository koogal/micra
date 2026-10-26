# /trigger code で数字が入力された（入力したプレイヤーとして実行）
scoreboard players set #ok niji 0
execute if score #door0 niji matches 0 if score @s code matches 1 run function niji:open/door0
execute if score #door0 niji matches 1 if score #door1 niji matches 0 if score @s code matches 3142 run function niji:open/door1
execute if score #door3 niji matches 1 if score #door4 niji matches 0 if score @s code matches 4173 run function niji:open/door4
execute if score #ok niji matches 0 run tellraw @s [{"text":"コード ","color":"red"},{"score":{"name":"@s","objective":"code"},"color":"red"},{"text":" は違うみたい…","color":"red"}]
execute if score #ok niji matches 0 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
scoreboard players set @s code 0
