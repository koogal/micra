# ===== ステージを建てる（毎回作り直すのでリセットにもなる） =====

# 外枠（中は空洞）と床
fill 1000 150 1000 1030 156 1008 minecraft:stone_bricks hollow
fill 1001 150 1001 1029 150 1007 minecraft:polished_andesite

# 仕切り壁
fill 1010 151 1001 1010 155 1007 minecraft:stone_bricks
fill 1020 151 1001 1020 155 1007 minecraft:stone_bricks

# 照明
setblock 1005 156 1004 minecraft:sea_lantern
setblock 1015 156 1004 minecraft:sea_lantern
setblock 1025 156 1004 minecraft:sea_lantern

# 扉（鉄格子）
fill 1010 151 1004 1010 152 1004 minecraft:iron_bars
fill 1020 151 1004 1020 152 1004 minecraft:iron_bars

# ===== 部屋1：色とレバー =====
setblock 1010 153 1002 minecraft:red_wool
setblock 1010 153 1003 minecraft:yellow_wool
setblock 1010 153 1005 minecraft:blue_wool
setblock 1010 153 1006 minecraft:lime_wool
setblock 1009 152 1002 minecraft:lever[face=wall,facing=west]
setblock 1009 152 1003 minecraft:lever[face=wall,facing=west]
setblock 1009 152 1005 minecraft:lever[face=wall,facing=west]
setblock 1009 152 1006 minecraft:lever[face=wall,facing=west]
setblock 1001 152 1004 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['"リンゴの色と"','"空の色。"','"その2つだけを"','"ONにせよ"']}}

# ===== 部屋2：樽の中の鍵 =====
setblock 1011 152 1002 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['"出口の鍵は"','"ひとりぼっちの"','"樽の中に"','"眠っている"']}}
setblock 1019 153 1004 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"鍵を手に持ち"','"扉の前に立て"','""']}}
setblock 1012 151 1001 minecraft:barrel[facing=up]{Items:[{Slot:13b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":'{"text":"ハズレ","italic":false}'}}]}
setblock 1013 151 1001 minecraft:barrel[facing=up]
setblock 1017 151 1001 minecraft:barrel[facing=up]
setblock 1018 151 1001 minecraft:barrel[facing=up]{Items:[{Slot:13b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":'{"text":"ここじゃない","italic":false}'}}]}
setblock 1015 151 1007 minecraft:barrel[facing=up]{Items:[{Slot:13b,id:"minecraft:tripwire_hook",count:1,components:{"minecraft:custom_data":{escape_key:1b},"minecraft:custom_name":'{"text":"錆びた鍵","italic":false,"color":"gold"}'}}]}

# ===== 部屋3：数字の謎 =====
setblock 1021 152 1002 minecraft:oak_wall_sign[facing=east]{is_waxed:1b,front_text:{messages:['"1 1 2 3 5 8 ?"','""','"答えの数字を"','"踏め"']}}
setblock 1028 151 1001 minecraft:stone_pressure_plate
setblock 1028 151 1003 minecraft:stone_pressure_plate
setblock 1028 151 1005 minecraft:stone_pressure_plate
setblock 1028 151 1007 minecraft:stone_pressure_plate
setblock 1029 152 1001 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"11"','""','""']}}
setblock 1029 152 1003 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"12"','""','""']}}
setblock 1029 152 1005 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"13"','""','""']}}
setblock 1029 152 1007 minecraft:oak_wall_sign[facing=west]{is_waxed:1b,front_text:{messages:['""','"21"','""','""']}}

# 作り直しで散らばったアイテムを消す
kill @e[type=minecraft:item,x=1000,y=150,z=1000,dx=30,dy=6,dz=8]
