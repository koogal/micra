# ===== ステージを建てる（毎回作り直すのでリセットにもなる） =====
kill @e[type=minecraft:item_frame,tag=niji]
fill 2000 150 2000 2074 156 2012 minecraft:stone_bricks hollow
# 部屋ごとの内装（壁・腰壁・床・天井）
fill 2001 151 2000 2009 155 2000 minecraft:quartz_bricks
fill 2001 151 2000 2009 151 2000 minecraft:purple_terracotta
fill 2001 151 2012 2009 155 2012 minecraft:quartz_bricks
fill 2001 151 2012 2009 151 2012 minecraft:purple_terracotta
fill 2001 150 2001 2009 150 2011 minecraft:dark_oak_planks
fill 2001 156 2001 2009 156 2011 minecraft:smooth_quartz
fill 2011 151 2000 2021 155 2000 minecraft:smooth_quartz
fill 2011 151 2000 2021 151 2000 minecraft:light_blue_terracotta
fill 2011 151 2012 2021 155 2012 minecraft:smooth_quartz
fill 2011 151 2012 2021 151 2012 minecraft:light_blue_terracotta
fill 2011 150 2001 2021 150 2011 minecraft:polished_diorite
fill 2011 156 2001 2021 156 2011 minecraft:white_concrete
fill 2023 151 2000 2033 155 2000 minecraft:cherry_planks
fill 2023 151 2000 2033 151 2000 minecraft:pink_terracotta
fill 2023 151 2012 2033 155 2012 minecraft:cherry_planks
fill 2023 151 2012 2033 151 2012 minecraft:pink_terracotta
fill 2023 150 2001 2033 150 2011 minecraft:birch_planks
fill 2023 156 2001 2033 156 2011 minecraft:white_concrete
fill 2035 151 2000 2045 155 2000 minecraft:gray_wool
fill 2035 151 2000 2045 151 2000 minecraft:black_wool
fill 2035 151 2012 2045 155 2012 minecraft:gray_wool
fill 2035 151 2012 2045 151 2012 minecraft:black_wool
fill 2035 150 2001 2045 150 2011 minecraft:gray_concrete
fill 2035 156 2001 2045 156 2011 minecraft:black_wool
fill 2047 151 2000 2059 155 2000 minecraft:white_terracotta
fill 2047 151 2000 2059 151 2000 minecraft:cyan_terracotta
fill 2047 151 2012 2059 155 2012 minecraft:white_terracotta
fill 2047 151 2012 2059 151 2012 minecraft:cyan_terracotta
fill 2047 150 2001 2059 150 2011 minecraft:polished_deepslate
fill 2047 156 2001 2059 156 2011 minecraft:white_concrete
fill 2061 151 2000 2073 155 2000 minecraft:black_concrete
fill 2061 151 2000 2073 151 2000 minecraft:purple_concrete
fill 2061 151 2012 2073 155 2012 minecraft:black_concrete
fill 2061 151 2012 2073 151 2012 minecraft:purple_concrete
fill 2061 150 2001 2073 150 2011 minecraft:smooth_quartz
fill 2061 156 2001 2073 156 2011 minecraft:black_concrete
fill 2000 151 2001 2000 155 2011 minecraft:quartz_bricks
fill 2074 151 2001 2074 155 2011 minecraft:black_concrete
# 仕切り壁と扉（鉄格子）
fill 2010 151 2001 2010 155 2011 minecraft:quartz_bricks
fill 2010 151 2006 2010 152 2006 minecraft:iron_bars
fill 2022 151 2001 2022 155 2011 minecraft:smooth_quartz
fill 2022 151 2006 2022 152 2006 minecraft:iron_bars
fill 2034 151 2001 2034 155 2011 minecraft:cherry_planks
fill 2034 151 2006 2034 152 2006 minecraft:iron_bars
fill 2046 151 2001 2046 155 2011 minecraft:gray_wool
fill 2046 151 2006 2046 152 2006 minecraft:iron_bars
fill 2060 151 2001 2060 155 2011 minecraft:white_terracotta
fill 2060 151 2006 2060 152 2006 minecraft:iron_bars
# 天井の照明（シーランタンを格子状に。編集室は虹の天井なので床に置く）
setblock 2002 156 2003 minecraft:sea_lantern
setblock 2002 156 2006 minecraft:sea_lantern
setblock 2002 156 2009 minecraft:sea_lantern
setblock 2005 156 2003 minecraft:sea_lantern
setblock 2005 156 2006 minecraft:sea_lantern
setblock 2005 156 2009 minecraft:sea_lantern
setblock 2008 156 2003 minecraft:sea_lantern
setblock 2008 156 2006 minecraft:sea_lantern
setblock 2008 156 2009 minecraft:sea_lantern
setblock 2012 156 2003 minecraft:sea_lantern
setblock 2012 156 2006 minecraft:sea_lantern
setblock 2012 156 2009 minecraft:sea_lantern
setblock 2015 156 2003 minecraft:sea_lantern
setblock 2015 156 2006 minecraft:sea_lantern
setblock 2015 156 2009 minecraft:sea_lantern
setblock 2018 156 2003 minecraft:sea_lantern
setblock 2018 156 2006 minecraft:sea_lantern
setblock 2018 156 2009 minecraft:sea_lantern
setblock 2024 156 2003 minecraft:sea_lantern
setblock 2024 156 2006 minecraft:sea_lantern
setblock 2024 156 2009 minecraft:sea_lantern
setblock 2027 156 2003 minecraft:sea_lantern
setblock 2027 156 2006 minecraft:sea_lantern
setblock 2027 156 2009 minecraft:sea_lantern
setblock 2030 156 2003 minecraft:sea_lantern
setblock 2030 156 2006 minecraft:sea_lantern
setblock 2030 156 2009 minecraft:sea_lantern
setblock 2036 156 2003 minecraft:sea_lantern
setblock 2036 156 2006 minecraft:sea_lantern
setblock 2036 156 2009 minecraft:sea_lantern
setblock 2039 156 2003 minecraft:sea_lantern
setblock 2039 156 2006 minecraft:sea_lantern
setblock 2039 156 2009 minecraft:sea_lantern
setblock 2042 156 2003 minecraft:sea_lantern
setblock 2042 156 2006 minecraft:sea_lantern
setblock 2042 156 2009 minecraft:sea_lantern
setblock 2062 156 2003 minecraft:sea_lantern
setblock 2062 156 2006 minecraft:sea_lantern
setblock 2062 156 2009 minecraft:sea_lantern
setblock 2065 156 2003 minecraft:sea_lantern
setblock 2065 156 2006 minecraft:sea_lantern
setblock 2065 156 2009 minecraft:sea_lantern
setblock 2068 156 2003 minecraft:sea_lantern
setblock 2068 156 2006 minecraft:sea_lantern
setblock 2068 156 2009 minecraft:sea_lantern
setblock 2071 156 2003 minecraft:sea_lantern
setblock 2071 156 2006 minecraft:sea_lantern
setblock 2071 156 2009 minecraft:sea_lantern
setblock 2048 150 2006 minecraft:sea_lantern
setblock 2053 150 2006 minecraft:sea_lantern
setblock 2052 150 2010 minecraft:sea_lantern
setblock 2058 150 2003 minecraft:sea_lantern
# 飾り：ロビーとスタジオの壁に虹のライン、ロビーと楽屋にラグ
setblock 2001 155 2000 minecraft:red_wool
setblock 2002 155 2000 minecraft:orange_wool
setblock 2003 155 2000 minecraft:yellow_wool
setblock 2004 155 2000 minecraft:lime_wool
setblock 2005 155 2000 minecraft:light_blue_wool
setblock 2006 155 2000 minecraft:blue_wool
setblock 2007 155 2000 minecraft:purple_wool
setblock 2008 155 2000 minecraft:red_wool
setblock 2009 155 2000 minecraft:orange_wool
setblock 2061 155 2000 minecraft:red_wool
setblock 2061 155 2012 minecraft:red_wool
setblock 2062 155 2000 minecraft:orange_wool
setblock 2062 155 2012 minecraft:orange_wool
setblock 2063 155 2000 minecraft:yellow_wool
setblock 2063 155 2012 minecraft:yellow_wool
setblock 2064 155 2000 minecraft:lime_wool
setblock 2064 155 2012 minecraft:lime_wool
setblock 2065 155 2000 minecraft:light_blue_wool
setblock 2065 155 2012 minecraft:light_blue_wool
setblock 2066 155 2000 minecraft:blue_wool
setblock 2066 155 2012 minecraft:blue_wool
setblock 2067 155 2000 minecraft:purple_wool
setblock 2067 155 2012 minecraft:purple_wool
setblock 2068 155 2000 minecraft:red_wool
setblock 2068 155 2012 minecraft:red_wool
setblock 2069 155 2000 minecraft:orange_wool
setblock 2069 155 2012 minecraft:orange_wool
setblock 2070 155 2000 minecraft:yellow_wool
setblock 2070 155 2012 minecraft:yellow_wool
setblock 2071 155 2000 minecraft:lime_wool
setblock 2071 155 2012 minecraft:lime_wool
setblock 2072 155 2000 minecraft:light_blue_wool
setblock 2072 155 2012 minecraft:light_blue_wool
setblock 2073 155 2000 minecraft:blue_wool
setblock 2073 155 2012 minecraft:blue_wool
fill 2003 151 2004 2007 151 2008 minecraft:purple_carpet
fill 2024 151 2004 2031 151 2008 minecraft:pink_carpet
fill 2036 151 2010 2044 151 2010 minecraft:black_carpet
# ===== 0. ロビー =====
setblock 2003 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"にじさんじ"','"脱出ゲーム"','"深夜のスタジオ"','"非公式の二次創作"']}}
setblock 2005 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"数字の答えは"','"チャットで入力"','"/trigger code"','"set 数字"']}}
setblock 2007 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"ヒントは各部屋の"','"ボタン①②③"','"①方向 ②ほぼ答え"','"③答え"']}}
setblock 2009 152 2005 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"練習："','"/trigger code"','"set 1 で"','"扉が開くよ"']}}
setblock 2011 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント①"','""','""']}}
setblock 2011 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント②"','""','""']}}
setblock 2011 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2011 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント③"','""','""']}}
setblock 2023 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント①"','""','""']}}
setblock 2023 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント②"','""','""']}}
setblock 2023 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2023 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント③"','""','""']}}
setblock 2035 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント①"','""','""']}}
setblock 2035 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント②"','""','""']}}
setblock 2035 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2035 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント③"','""','""']}}
setblock 2047 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント①"','""','""']}}
setblock 2047 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント②"','""','""']}}
setblock 2047 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2047 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント③"','""','""']}}
setblock 2061 152 2008 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2008 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント①"','""','""']}}
setblock 2061 152 2009 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2009 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント②"','""','""']}}
setblock 2061 152 2010 minecraft:stone_button[face=wall,facing=east]
setblock 2061 153 2010 minecraft:birch_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ヒント③"','""','""']}}
# かけらのチェスト（謎を解いた先の部屋に置いてある）
setblock 2023 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:blue_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「し」", "italic": false, "color": "aqua"}'}}]}
setblock 2035 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:purple_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「ん」", "italic": false, "color": "light_purple"}'}}]}
setblock 2047 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:red_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「は」", "italic": false, "color": "red"}'}}]}
setblock 2061 151 2011 minecraft:chest[facing=east]{CustomName:'"記念配信データ"',Items:[{Slot:13b,id:"minecraft:yellow_wool",count:1,components:{"minecraft:custom_name":'{"text": "かけら「い」", "italic": false, "color": "yellow"}'}}]}
# ===== 1. エントランス：入館コード 3142 =====
fill 2018 151 2003 2018 151 2009 minecraft:spruce_planks
setblock 2017 151 2005 minecraft:spruce_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"入館コード"','"①咲いた花"','"②空っぽの額縁"','""']}}
setblock 2017 151 2007 minecraft:spruce_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"③消えた灯り"','"④白紙の名札"','"①～④の数を"','"順に4桁で"']}}
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
setblock 2013 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"【名札】"','""','"スタッフ 田中"','""']}}
setblock 2015 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"【名札】"','""','""','""']}}
setblock 2017 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"【名札】"','""','"スタッフ 佐藤"','""']}}
setblock 2018 152 2001 minecraft:oak_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"【名札】"','""','"スタッフ 鈴木"','""']}}
setblock 2019 151 2005 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"【名札】"','""','""','""']}}
# ===== 2. 楽屋：差し入れの論理パズル =====
setblock 2024 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 A"'}
setblock 2024 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"甘いお菓子は"','"今日はいらない"','"果物も気分じゃ"','"ないな"']}}
setblock 2024 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ライバーA"','"の楽屋"','""']}}
setblock 2026 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 B"'}
setblock 2026 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"オーブンで"','"焼いたものは"','"ちょっと…"','""']}}
setblock 2026 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ライバーB"','"の楽屋"','""']}}
setblock 2028 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 C"'}
setblock 2028 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"りんごを頂いた"','"人の楽屋は"','"わたしの"','"すぐ左だよ"']}}
setblock 2028 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ライバーC"','"の楽屋"','""']}}
setblock 2030 151 2001 minecraft:barrel[facing=up]{CustomName:'"納品箱 D"'}
setblock 2030 152 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"ろうそくは"','"立てなくて"','"いいよ"','""']}}
setblock 2030 153 2001 minecraft:cherry_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ライバーD"','"の楽屋"','""']}}
setblock 2032 151 2011 minecraft:barrel[facing=up]{CustomName:'"冷蔵庫"',Items:[{Slot:9b,id:"minecraft:cookie",count:1},{Slot:10b,id:"minecraft:apple",count:1},{Slot:11b,id:"minecraft:cake",count:1},{Slot:12b,id:"minecraft:golden_carrot",count:1},{Slot:13b,id:"minecraft:bread",count:1},{Slot:14b,id:"minecraft:melon_slice",count:1},{Slot:15b,id:"minecraft:pumpkin_pie",count:1},{Slot:16b,id:"minecraft:golden_apple",count:1}]}
setblock 2031 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"給湯室"','""','""']}}
setblock 2032 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"発注メモ"','"今日の差し入れ"','"クッキー・りんご"','"ケーキ・金のニンジン"']}}
setblock 2033 152 2011 minecraft:oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"一人1つずつ"','"納品箱には"','"1つだけ"','"入れてね"']}}
# ===== 3. 配信ブース：コメント欄と伝言 =====
setblock 2036 152 2011 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"配信ルール"','"モデレーターは"','"名前が青い"','""']}}
setblock 2037 152 2011 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"大事なことは"','"古い順に"','"頭文字だけ"','""']}}
setblock 2037 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "つきみ", "color": "blue", "bold": true}','"20:49"','"にぎやかに"','"なってきた"']}}
setblock 2038 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "ねこまる", "color": "dark_gray", "bold": false}','"20:42"','"初見です"','""']}}
setblock 2039 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "ほしぞら", "color": "blue", "bold": true}','"20:43"','"ん？音量"','"小さくない？"']}}
setblock 2040 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "とまと", "color": "dark_gray", "bold": false}','"20:48"','"こんばんは〜"','""']}}
setblock 2041 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "あめふり", "color": "blue", "bold": true}','"20:55"','"ちゃんと水分"','"とってね"']}}
setblock 2042 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "かぜ", "color": "dark_gray", "bold": false}','"20:46"','"待機！"','""']}}
setblock 2043 153 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "ゆきだるま", "color": "blue", "bold": true}','"20:41"','"よし、みんな"','"集まってきたね"']}}
setblock 2037 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "みかん", "color": "dark_gray", "bold": false}','"20:56"','"ぎりぎり"','"間に合った"']}}
setblock 2038 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "にじいろ", "color": "blue", "bold": true}','"20:47"','"ながら見の人も"','"ゆっくりしてね"']}}
setblock 2039 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "ぺんぎん", "color": "dark_gray", "bold": false}','"20:50"','"わくわく"','""']}}
setblock 2040 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "そらまめ", "color": "blue", "bold": true}','"20:52"','"いよいよだね"','""']}}
setblock 2041 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "くじら", "color": "dark_gray", "bold": false}','"20:44"','"8888"','""']}}
setblock 2042 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "もみじ", "color": "blue", "bold": true}','"20:45"','"なつかしい"','"BGMだ"']}}
setblock 2043 152 2001 minecraft:birch_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['{"text": "たぬき", "color": "dark_gray", "bold": false}','"20:53"','"草"','""']}}
# 配信者ロッカー（暗証番号 4721 で開いて伝言の本が出てくる）
fill 2035 151 2003 2035 153 2005 minecraft:bookshelf
fill 2045 151 2001 2045 153 2005 minecraft:bookshelf
fill 2045 151 2003 2045 152 2003 minecraft:iron_block
setblock 2044 152 2003 minecraft:dark_oak_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"配信者ロッカー"','"暗証番号4桁"','"/trigger code"','"set 番号"']}}
# 配信卓とレバー
# 台はレッドストーンランプ：レバーをONにすると台が光る（間はハーフブロックで隣に伝わらない）
fill 2038 151 2008 2044 151 2008 minecraft:polished_blackstone_slab
setblock 2038 151 2008 minecraft:redstone_lamp
setblock 2038 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2038 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"マイク"','""','""']}}
setblock 2040 151 2008 minecraft:redstone_lamp
setblock 2040 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2040 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"カメラ"','""','""']}}
setblock 2042 151 2008 minecraft:redstone_lamp
setblock 2042 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2042 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"BGM"','""','""']}}
setblock 2044 151 2008 minecraft:redstone_lamp
setblock 2044 152 2008 minecraft:lever[face=floor,facing=north]
setblock 2044 151 2007 minecraft:dark_oak_wall_sign[facing=north]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"照明"','""','""']}}
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
setblock 2047 152 2003 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"にじは7色"','"はじまりは1"','""']}}
setblock 2050 152 2001 minecraft:spruce_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"編集長メモ"','"パスワードは"','"窓の向こうの"','"4色"']}}
setblock 2051 152 2001 minecraft:spruce_wall_sign[facing=south]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"ただし向こうは"','"鏡の国。"','"見たまま読んでは"','"いけない"']}}
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
setblock 2073 153 2006 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['"かけらを"','"にじの順に"','"それが今夜の"','"合言葉"']}}
setblock 2073 152 2002 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2002 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"さ"','""','""']}}
setblock 2073 152 2003 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2003 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"し"','""','""']}}
setblock 2073 152 2004 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2004 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"は"','""','""']}}
setblock 2073 152 2005 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2005 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ろ"','""','""']}}
setblock 2073 152 2007 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2007 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"ん"','""','""']}}
setblock 2073 152 2008 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2008 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"い"','""','""']}}
setblock 2073 152 2009 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2009 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"く"','""','""']}}
setblock 2073 152 2010 minecraft:polished_blackstone_button[face=wall,facing=west]
setblock 2073 153 2010 minecraft:birch_wall_sign[facing=west]{is_waxed:1b,front_text:{has_glowing_text:1b,messages:['""','"て"','""','""']}}
# 見えない光源（light ブロック）で全室を明るくする
setblock 2002 154 2002 minecraft:light[level=15]
setblock 2002 154 2006 minecraft:light[level=15]
setblock 2002 154 2010 minecraft:light[level=15]
setblock 2005 154 2002 minecraft:light[level=15]
setblock 2005 154 2006 minecraft:light[level=15]
setblock 2005 154 2010 minecraft:light[level=15]
setblock 2008 154 2002 minecraft:light[level=15]
setblock 2008 154 2006 minecraft:light[level=15]
setblock 2008 154 2010 minecraft:light[level=15]
setblock 2011 154 2002 minecraft:light[level=15]
setblock 2011 154 2006 minecraft:light[level=15]
setblock 2011 154 2010 minecraft:light[level=15]
setblock 2014 154 2002 minecraft:light[level=15]
setblock 2014 154 2006 minecraft:light[level=15]
setblock 2014 154 2010 minecraft:light[level=15]
setblock 2017 154 2002 minecraft:light[level=15]
setblock 2017 154 2006 minecraft:light[level=15]
setblock 2017 154 2010 minecraft:light[level=15]
setblock 2020 154 2002 minecraft:light[level=15]
setblock 2020 154 2006 minecraft:light[level=15]
setblock 2020 154 2010 minecraft:light[level=15]
setblock 2023 154 2002 minecraft:light[level=15]
setblock 2023 154 2006 minecraft:light[level=15]
setblock 2023 154 2010 minecraft:light[level=15]
setblock 2026 154 2002 minecraft:light[level=15]
setblock 2026 154 2006 minecraft:light[level=15]
setblock 2026 154 2010 minecraft:light[level=15]
setblock 2029 154 2002 minecraft:light[level=15]
setblock 2029 154 2006 minecraft:light[level=15]
setblock 2029 154 2010 minecraft:light[level=15]
setblock 2032 154 2002 minecraft:light[level=15]
setblock 2032 154 2006 minecraft:light[level=15]
setblock 2032 154 2010 minecraft:light[level=15]
setblock 2035 154 2002 minecraft:light[level=15]
setblock 2035 154 2006 minecraft:light[level=15]
setblock 2035 154 2010 minecraft:light[level=15]
setblock 2038 154 2002 minecraft:light[level=15]
setblock 2038 154 2006 minecraft:light[level=15]
setblock 2038 154 2010 minecraft:light[level=15]
setblock 2041 154 2002 minecraft:light[level=15]
setblock 2041 154 2006 minecraft:light[level=15]
setblock 2041 154 2010 minecraft:light[level=15]
setblock 2044 154 2002 minecraft:light[level=15]
setblock 2044 154 2006 minecraft:light[level=15]
setblock 2044 154 2010 minecraft:light[level=15]
setblock 2047 154 2002 minecraft:light[level=15]
setblock 2047 154 2006 minecraft:light[level=15]
setblock 2047 154 2010 minecraft:light[level=15]
setblock 2050 154 2002 minecraft:light[level=15]
setblock 2050 154 2006 minecraft:light[level=15]
setblock 2050 154 2010 minecraft:light[level=15]
setblock 2053 154 2002 minecraft:light[level=15]
setblock 2053 154 2006 minecraft:light[level=15]
setblock 2053 154 2010 minecraft:light[level=15]
setblock 2056 154 2002 minecraft:light[level=15]
setblock 2056 154 2006 minecraft:light[level=15]
setblock 2056 154 2010 minecraft:light[level=15]
setblock 2059 154 2002 minecraft:light[level=15]
setblock 2059 154 2006 minecraft:light[level=15]
setblock 2059 154 2010 minecraft:light[level=15]
setblock 2062 154 2002 minecraft:light[level=15]
setblock 2062 154 2006 minecraft:light[level=15]
setblock 2062 154 2010 minecraft:light[level=15]
setblock 2065 154 2002 minecraft:light[level=15]
setblock 2065 154 2006 minecraft:light[level=15]
setblock 2065 154 2010 minecraft:light[level=15]
setblock 2068 154 2002 minecraft:light[level=15]
setblock 2068 154 2006 minecraft:light[level=15]
setblock 2068 154 2010 minecraft:light[level=15]
setblock 2071 154 2002 minecraft:light[level=15]
setblock 2071 154 2006 minecraft:light[level=15]
setblock 2071 154 2010 minecraft:light[level=15]
# 作り直しで散らばったアイテムを消す
kill @e[type=minecraft:item,x=2000,y=150,z=2000,dx=74,dy=8,dz=12]
