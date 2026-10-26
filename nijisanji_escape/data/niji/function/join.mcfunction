# ゲームの途中から入ってきたプレイヤー（マルチプレイ用）
tag @s add niji_player
gamemode adventure @s
give @s minecraft:written_book[minecraft:written_book_content={title:"はじめに",author:"スタジオ",pages:['"今日はにじさんじ配信スタジオでの初出勤日。\\n\\n深夜0時からは大事な記念配信がある。\\n\\nところが停電でセキュリティが誤作動し、扉が全部ロックされてしまった！"','"ライバーさんたちのメモを頼りにロックを解除し、記念配信データのかけら4つを集めて、メインスタジオで配信を始めよう。\\n\\n※非公式の二次創作です"']}]
tellraw @s {"text":"ゲームは進行中です。仲間と合流しよう！","color":"light_purple"}
