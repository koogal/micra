# ===== ステージを建てる（毎回作り直すのでリセットにもなる） =====
kill @e[type=minecraft:item_frame,tag=niji]
fill 2000 150 2000 2074 156 2012 minecraft:stone_bricks hollow
fill 2001 150 2001 2009 150 2011 minecraft:polished_andesite
fill 2011 150 2001 2021 150 2011 minecraft:smooth_quartz
fill 2023 150 2001 2033 150 2011 minecraft:oak_planks
fill 2035 150 2001 2045 150 2011 minecraft:gray_concrete
fill 2047 150 2001 2059 150 2011 minecraft:polished_andesite
fill 2061 150 2001 2073 150 2011 minecraft:smooth_quartz
# 仕切り壁と扉（鉄格子）
fill 2010 151 2001 2010 155 2011 minecraft:stone_bricks
fill 2010 151 2006 2010 152 2006 minecraft:iron_bars
fill 2022 151 2001 2022 155 2011 minecraft:stone_bricks
fill 2022 151 2006 2022 152 2006 minecraft:iron_bars
fill 2034 151 2001 2034 155 2011 minecraft:stone_bricks
fill 2034 151 2006 2034 152 2006 minecraft:iron_bars
fill 2046 151 2001 2046 155 2011 minecraft:stone_bricks
fill 2046 151 2006 2046 152 2006 minecraft:iron_bars
fill 2060 151 2001 2060 155 2011 minecraft:stone_bricks
fill 2060 151 2006 2060 152 2006 minecraft:iron_bars
# 照明
setblock 2005 156 2006 minecraft:sea_lantern
setblock 2017 156 2006 minecraft:sea_lantern
setblock 2028 156 2004 minecraft:sea_lantern
setblock 2028 156 2008 minecraft:sea_lantern
setblock 2040 156 2004 minecraft:sea_lantern
setblock 2040 156 2009 minecraft:sea_lantern
setblock 2067 156 2003 minecraft:sea_lantern
setblock 2067 156 2009 minecraft:sea_lantern
# ===== 0. ロビー =====
setblock 2003 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"にじさんじ"','"脱出ゲーム"','"深夜のスタジオ"','"非公式の二次創作"']}}
setblock 2005 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"数字の答えは"','"チャットで入力"','"/trigger code"','"set 数字"']}}
setblock 2007 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"ヒントは各部屋の"','"ボタン①②③"','"①方向 ②ほぼ答え"','"③答え"']}}
setblock 2009 152 2005 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['"練習："','"/trigger code"','"set 1 で"','"扉が開くよ"']}}
setblock 2011 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント①"','""','""']}}
setblock 2011 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント②"','""','""']}}
setblock 2011 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント③"','""','""']}}
setblock 2023 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント①"','""','""']}}
setblock 2023 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント②"','""','""']}}
setblock 2023 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント③"','""','""']}}
setblock 2035 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント①"','""','""']}}
setblock 2035 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント②"','""','""']}}
setblock 2035 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント③"','""','""']}}
setblock 2047 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント①"','""','""']}}
setblock 2047 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント②"','""','""']}}
setblock 2047 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント③"','""','""']}}
setblock 2061 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント①"','""','""']}}
setblock 2061 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント②"','""','""']}}
setblock 2061 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"ヒント③"','""','""']}}
# かけらのチェスト（謎を解いた先の部屋に置いてある）
setblock 2023 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:blue_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「し」", "italic": false, "color": "aqua"}'}}]}
setblock 2035 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:purple_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「ん」", "italic": false, "color": "light_purple"}'}}]}
setblock 2047 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「は」", "italic": false, "color": "red"}'}}]}
setblock 2061 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「い」", "italic": false, "color": "yellow"}'}}]}
# ===== 1. エントランス：入館コード 3142 =====
fill 2018 151 2003 2018 151 2009 minecraft:spruce_planks
setblock 2017 151 2005 minecraft:spruce_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['"入館コード"','"①咲いた花"','"②空っぽの額縁"','""']}}
setblock 2017 151 2007 minecraft:spruce_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['"③消えた灯り"','"④白紙の名札"','"①～④の数を"','"順に4桁で"']}}
# 植木鉢（花は3つ）
setblock 2012 151 2001 minecraft:potted_poppy
setblock 2014 151 2001 minecraft:potted_cactus
setblock 2016 151 2001 minecraft:potted_dandelion
setblock 2012 151 2011 minecraft:potted_oak_sapling
setblock 2014 151 2011 minecraft:potted_blue_orchid
setblock 2016 151 2011 minecraft:potted_dead_bush
# 額縁（空は1つ）
summon minecraft:item_frame 2012 153 2001 {Facing:3b,Fixed:1b,Invulnerable:1b,Tags:["niji"],Item:{id:"minecraft:emerald",count:1}}
summon minecraft:item_frame 2014 153 2001 {Facing:3b,Fixed:1b,Invulnerable:1b,Tags:["niji"],Item:{id:"minecraft:music_disc_cat",count:1}}
summon minecraft:item_frame 2016 153 2001 {Facing:3b,Fixed:1b,Invulnerable:1b,Tags:["niji"]}
summon minecraft:item_frame 2020 153 2001 {Facing:3b,Fixed:1b,Invulnerable:1b,Tags:["niji"],Item:{id:"minecraft:amethyst_shard",count:1}}
summon minecraft:item_frame 2013 153 2011 {Facing:2b,Fixed:1b,Invulnerable:1b,Tags:["niji"],Item:{id:"minecraft:heart_of_the_sea",count:1}}
summon minecraft:item_frame 2019 153 2011 {Facing:2b,Fixed:1b,Invulnerable:1b,Tags:["niji"],Item:{id:"minecraft:nether_star",count:1}}
# ランプ（消えているのは4つ。1つはカウンターの裏）
setblock 2012 156 2004 minecraft:redstone_block
setblock 2012 155 2004 minecraft:redstone_lamp[lit=true]
setblock 2015 156 2008 minecraft:redstone_block
setblock 2015 155 2008 minecraft:redstone_lamp[lit=true]
setblock 2015 155 2004 minecraft:redstone_lamp
setblock 2012 155 2008 minecraft:redstone_lamp
setblock 2020 155 2008 minecraft:redstone_lamp
setblock 2020 151 2003 minecraft:redstone_lamp
# 名札（白紙は2枚。1枚はカウンターの内側）
setblock 2013 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"【名札】"','""','"スタッフ 田中"','""']}}
setblock 2015 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"【名札】"','""','""','""']}}
setblock 2017 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"【名札】"','""','"スタッフ 佐藤"','""']}}
setblock 2018 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"【名札】"','""','"スタッフ 鈴木"','""']}}
setblock 2019 151 2005 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['"【名札】"','""','""','""']}}
# ===== 2. 楽屋：差し入れの論理パズル =====
setblock 2024 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 A"'}
setblock 2024 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"甘いお菓子は"','"今日はいらない"','"果物も気分じゃ"','"ないな"']}}
setblock 2024 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['""','"ライバーA"','"の楽屋"','""']}}
setblock 2026 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 B"'}
setblock 2026 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"オーブンで"','"焼いたものは"','"ちょっと…"','""']}}
setblock 2026 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['""','"ライバーB"','"の楽屋"','""']}}
setblock 2028 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 C"'}
setblock 2028 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"りんごを頂いた"','"人の楽屋は"','"わたしの"','"すぐ左だよ"']}}
setblock 2028 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['""','"ライバーC"','"の楽屋"','""']}}
setblock 2030 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 D"'}
setblock 2030 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"ろうそくは"','"立てなくて"','"いいよ"','""']}}
setblock 2030 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['""','"ライバーD"','"の楽屋"','""']}}
setblock 2032 151 2011 minecraft:barrel[facing=up]{CustomName:'"冷蔵庫"',Items:[{Slot:9b,id:"minecraft:cookie",count:1},{Slot:10b,id:"minecraft:apple",count:1},{Slot:11b,id:"minecraft:cake",count:1},{Slot:12b,id:"minecraft:golden_carrot",count:1},{Slot:13b,id:"minecraft:bread",count:1},{Slot:14b,id:"minecraft:melon_slice",count:1},{Slot:15b,id:"minecraft:pumpkin_pie",count:1},{Slot:16b,id:"minecraft:golden_apple",count:1}]}
setblock 2031 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['""','"給湯室"','""','""']}}
setblock 2032 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"発注メモ"','"今日の差し入れ"','"クッキー・りんご"','"ケーキ・金のニンジン"']}}
setblock 2033 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"一人1つずつ"','"納品箱には"','"1つだけ"','"入れてね"']}}
# ===== 3. 配信ブース：コメント欄と伝言 =====
setblock 2036 152 2011 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"配信ルール"','"モデレーターは"','"名前が青い"','""']}}
setblock 2037 152 2011 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['"大事なことは"','"古い順に"','"頭文字だけ"','""']}}
setblock 2037 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "あめふり", "color": "blue", "bold": true}','"20:57"','"なんか音が"','"出てないかも？"']}}
setblock 2038 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "ねこまる", "color": "dark_gray", "bold": false}','"20:51"','"初見です"','""']}}
setblock 2039 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "ゆきだるま", "color": "blue", "bold": true}','"20:52"','"ぎりぎり"','"間に合った"']}}
setblock 2040 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "とまと", "color": "dark_gray", "bold": false}','"20:53"','"8888"','""']}}
setblock 2041 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "ほしぞら", "color": "blue", "bold": true}','"20:50"','"みんな、もうすぐ"','"始まるよ！"']}}
setblock 2039 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "かぜ", "color": "dark_gray", "bold": false}','"20:55"','"待機！"','""']}}
setblock 2040 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "つきみ", "color": "blue", "bold": true}','"20:56"','"たのしみにしてた"','"人、多いね"']}}
setblock 2041 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "みかん", "color": "dark_gray", "bold": false}','"20:58"','"こんばんは〜"','""']}}
setblock 2042 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "にじいろ", "color": "blue", "bold": true}','"20:54"','"のど飴の準備は"','"大丈夫？"']}}
setblock 2043 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['{"text": "ぺんぎん", "color": "dark_gray", "bold": false}','"20:49"','"わくわく"','""']}}
# 棚（左はハズレ、右に伝言の本）
fill 2035 151 2003 2035 153 2005 minecraft:bookshelf
setblock 2035 151 2004 minecraft:barrel[facing=east]{CustomName:'"左の棚"',Items:[{Slot:13b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":'{"text": "ここじゃない…", "italic": false}'}}]}
fill 2045 151 2003 2045 153 2005 minecraft:bookshelf
setblock 2045 151 2004 minecraft:barrel[facing=west]{CustomName:'"右の棚"',Items:[{Slot:13b,id:"minecraft:written_book",count:1,components:{"minecraft:written_book_content":{title:"伝言",author:"配信者",pages:['"スタッフさんへ\\n\\n今日は声だけの配信。顔は映さないよ。\\n\\n声が届かなかったら意味ないよね。"','"BGMはマイクと反対にしておいて。\\n\\n照明はカメラと逆で！\\n\\nよろしくね。"']}}}]}
# 配信卓とレバー
# 台はレッドストーンランプ：レバーをONにすると台が光る（間はハーフブロックで隣に伝わらない）
fill 2038 151 2008 2044 151 2008 minecraft:polished_blackstone_slab
setblock 2038 151 2008 minecraft:redstone_lamp
setblock 2038 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2038 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['""','"マイク"','""','""']}}
setblock 2040 151 2008 minecraft:redstone_lamp
setblock 2040 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2040 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['""','"カメラ"','""','""']}}
setblock 2042 151 2008 minecraft:redstone_lamp
setblock 2042 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2042 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['""','"BGM"','""','""']}}
setblock 2044 151 2008 minecraft:redstone_lamp
setblock 2044 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2044 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{messages:['""','"照明"','""','""']}}
# ===== 4. 編集室：鏡うつしの虹色暗号 4173 =====
fill 2048 156 2001 2048 156 2011 minecraft:red_wool
fill 2049 156 2001 2049 156 2011 minecraft:orange_wool
fill 2050 156 2001 2050 156 2011 minecraft:yellow_wool
fill 2051 156 2001 2051 156 2011 minecraft:lime_wool
fill 2052 156 2001 2052 156 2011 minecraft:light_blue_wool
fill 2053 156 2001 2053 156 2011 minecraft:blue_wool
fill 2054 156 2001 2054 156 2011 minecraft:purple_wool
setblock 2050 150 2003 minecraft:sea_lantern
setblock 2050 150 2009 minecraft:sea_lantern
setblock 2057 150 2003 minecraft:sea_lantern
setblock 2047 152 2003 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['""','"にじは7色"','"はじまりは1"','""']}}
setblock 2050 152 2001 minecraft:spruce_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"編集長メモ"','"パスワードは"','"窓の向こうの"','"4色"']}}
setblock 2051 152 2001 minecraft:spruce_wall_sign[facing=south]{is_waxed:1b,front_text:{messages:['"ただし向こうは"','"鏡の国。"','"見たまま読んでは"','"いけない"']}}
# 鏡の小部屋（ガラス越しにだけ見える）
fill 2055 151 2007 2059 155 2007 minecraft:glass
fill 2054 151 2007 2054 155 2011 minecraft:stone_bricks
setblock 2057 150 2009 minecraft:sea_lantern
setblock 2059 152 2011 minecraft:yellow_concrete
setblock 2058 152 2011 minecraft:purple_concrete
setblock 2057 152 2011 minecraft:red_concrete
setblock 2056 152 2011 minecraft:lime_concrete
# ===== 5. メインスタジオ：配信開始 =====
fill 2070 150 2001 2073 150 2011 minecraft:purple_concrete
setblock 2073 153 2006 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['"かけらを"','"にじの順に"','"それが今夜の"','"合言葉"']}}
setblock 2073 152 2002 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2002 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"さ"','""','""']}}
setblock 2073 152 2003 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2003 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"し"','""','""']}}
setblock 2073 152 2004 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2004 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"は"','""','""']}}
setblock 2073 152 2005 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2005 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"ろ"','""','""']}}
setblock 2073 152 2007 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2007 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"ん"','""','""']}}
setblock 2073 152 2008 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2008 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"い"','""','""']}}
setblock 2073 152 2009 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2009 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"く"','""','""']}}
setblock 2073 152 2010 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2010 minecraft:crimson_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"て"','""','""']}}
# 作り直しで散らばったアイテムを消す
kill @e[type=minecraft:item,x=2000,y=150,z=2000,dx=74,dy=8,dz=12]
