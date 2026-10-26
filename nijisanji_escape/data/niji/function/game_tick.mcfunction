scoreboard players add #time niji 1
execute as @a[tag=!niji_player] run function niji:join

# 数字の入力（/trigger code set 数字）
scoreboard players enable @a code
execute as @a[scores={code=1..}] run function niji:code
execute as @a[scores={code=..-1}] run scoreboard players set @s code 0

# 謎2：納品箱に正しい差し入れが1つずつ入っている
execute store result score #ba niji run data get block 2024 151 2001 Items
execute store result score #bb niji run data get block 2026 151 2001 Items
execute store result score #bc niji run data get block 2028 151 2001 Items
execute store result score #bd niji run data get block 2030 151 2001 Items
execute if score #door1 niji matches 1 if score #door2 niji matches 0 if score #ba niji matches 1 if score #bb niji matches 1 if score #bc niji matches 1 if score #bd niji matches 1 if items block 2024 151 2001 container.* minecraft:golden_carrot if items block 2026 151 2001 container.* minecraft:apple if items block 2028 151 2001 container.* minecraft:cake if items block 2030 151 2001 container.* minecraft:cookie run function niji:open/door2

# 謎3：マイクON・カメラOFF・BGM OFF・照明ON
execute if score #locker niji matches 1 if score #door3 niji matches 0 if block 2038 152 2008 minecraft:lever[powered=true] if block 2040 152 2008 minecraft:lever[powered=false] if block 2042 152 2008 minecraft:lever[powered=false] if block 2044 152 2008 minecraft:lever[powered=true] run function niji:open/door3

# 謎5：文字ボタン
execute if score #door4 niji matches 1 if block 2073 152 2002 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_decoy_2002
execute if score #door4 niji matches 1 if block 2073 152 2003 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_shi_2003
execute if score #door4 niji matches 1 if block 2073 152 2004 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_ha_2004
execute if score #door4 niji matches 1 if block 2073 152 2005 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_decoy_2005
execute if score #door4 niji matches 1 if block 2073 152 2007 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_n_2007
execute if score #door4 niji matches 1 if block 2073 152 2008 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_i_2008
execute if score #door4 niji matches 1 if block 2073 152 2009 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_decoy_2009
execute if score #door4 niji matches 1 if block 2073 152 2010 minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_decoy_2010

# ヒントボタン
execute if block 2011 152 2008 minecraft:stone_button[powered=true] run function niji:hint/r1_1
execute if block 2011 152 2009 minecraft:stone_button[powered=true] run function niji:hint/r1_2
execute if block 2011 152 2010 minecraft:stone_button[powered=true] run function niji:hint/r1_3
execute if block 2023 152 2008 minecraft:stone_button[powered=true] run function niji:hint/r2_1
execute if block 2023 152 2009 minecraft:stone_button[powered=true] run function niji:hint/r2_2
execute if block 2023 152 2010 minecraft:stone_button[powered=true] run function niji:hint/r2_3
execute if block 2035 152 2008 minecraft:stone_button[powered=true] run function niji:hint/r3_1
execute if block 2035 152 2009 minecraft:stone_button[powered=true] run function niji:hint/r3_2
execute if block 2035 152 2010 minecraft:stone_button[powered=true] run function niji:hint/r3_3
execute if block 2047 152 2008 minecraft:stone_button[powered=true] run function niji:hint/r4_1
execute if block 2047 152 2009 minecraft:stone_button[powered=true] run function niji:hint/r4_2
execute if block 2047 152 2010 minecraft:stone_button[powered=true] run function niji:hint/r4_3
execute if block 2061 152 2008 minecraft:stone_button[powered=true] run function niji:hint/r5_1
execute if block 2061 152 2009 minecraft:stone_button[powered=true] run function niji:hint/r5_2
execute if block 2061 152 2010 minecraft:stone_button[powered=true] run function niji:hint/r5_3
