# ゲームを中断してクリエイティブに戻す（編集・テスト用）
scoreboard players set #running niji 0
gamemode creative @s
tellraw @s {"text":"ゲームを中断しました","color":"gray"}
