# タイマー
scoreboard players add #time escape 1

# --- 部屋1：レバーの謎（赤と青だけON） ---
execute if score #door1 escape matches 0 if block 1009 152 1002 minecraft:lever[powered=true] if block 1009 152 1003 minecraft:lever[powered=false] if block 1009 152 1005 minecraft:lever[powered=true] if block 1009 152 1006 minecraft:lever[powered=false] run function escape:open_door1

# --- 部屋2：鍵を持って扉の前に立つ ---
execute if score #door2 escape matches 0 as @a[x=1018,y=151,z=1003,dx=1,dy=1,dz=2] if items entity @s weapon.mainhand minecraft:tripwire_hook[minecraft:custom_data={escape_key:1b}] run function escape:open_door2

# --- 部屋3：正しい数字のプレートを踏む（正解は13） ---
execute as @a[x=1028,y=151,z=1001,dx=0,dy=0,dz=0] run function escape:wrong
execute as @a[x=1028,y=151,z=1003,dx=0,dy=0,dz=0] run function escape:wrong
execute as @a[x=1028,y=151,z=1007,dx=0,dy=0,dz=0] run function escape:wrong
execute as @a[x=1028,y=151,z=1005,dx=0,dy=0,dz=0] run function escape:clear
