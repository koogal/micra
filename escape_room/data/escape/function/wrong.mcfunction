# 間違いのプレートを踏んだプレイヤーを部屋の入口へ戻す
tp @s 1022.5 151 1004.5 -90 0
tellraw @s {"text":"…違うようだ。","color":"red"}
playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1
