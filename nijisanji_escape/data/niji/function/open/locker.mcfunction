scoreboard players set #locker niji 1
scoreboard players set #ok niji 1
setblock 2045 152 2003 minecraft:bookshelf
setblock 2045 151 2003 minecraft:barrel[facing=west]{CustomName:'"配信者ロッカー"',Items:[{Slot:13b,id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"伝言",author:"配信者",pages:['"スタッフさんへ\\n\\n今日は声だけの配信。顔は映さないよ。\\n\\n声が届かなかったら意味ないよね。"','"BGMはマイクと反対にしておいて。\\n\\n照明はカメラと逆で！\\n\\nよろしくね。"']}}}]}
tellraw @a {"text":"カチッ…配信者ロッカーが開いた！","color":"green"}
execute as @a at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 1
