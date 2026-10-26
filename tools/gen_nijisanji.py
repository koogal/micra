"""にじさんじ脱出ゲームのデータパックを生成する（Java 1.21.4 / pack_format 61）"""
import json
import os
import shutil
import sys

OUT = sys.argv[1]
NS = "niji"
FN = os.path.join(OUT, "data", NS, "function")

files = {}


def f(name, *lines):
    files.setdefault(name, []).extend(lines)


def js(text, **kw):
    """テキストコンポーネントを SNBT の '...' 文字列にする"""
    d = {"text": text}
    d.update(kw)
    s = json.dumps(d, ensure_ascii=False) if kw else json.dumps(text, ensure_ascii=False)
    return "'" + s.replace("\\", "\\\\").replace("'", "\\'") + "'"


def sign(x, y, z, facing, lines, wood="oak"):
    lines = (list(lines) + [""] * 4)[:4]
    msgs = ",".join(l if isinstance(l, str) and l.startswith("'") else js(l) for l in lines)
    return f"setblock {x} {y} {z} minecraft:{wood}_wall_sign[facing={facing}]{{is_waxed:1b,front_text:{{has_glowing_text:1b,messages:[{msgs}]}}}}"


def item(id_, name=None, color=None, slot=13, extra=None):
    comps = []
    if name:
        kw = {"italic": False}
        if color:
            kw["color"] = color
        comps.append('"minecraft:custom_name":' + js(name, **kw))
    if extra:
        comps.append(extra)
    c = (",components:{" + ",".join(comps) + "}") if comps else ""
    return f'{{Slot:{slot}b,id:"minecraft:{id_}",count:1{c}}}'


LEVER_X = [2038, 2040, 2042, 2044]

# 座標：建物 x2000-2074, y150-156, z2000-2012。部屋の境の壁 x = 2010,2022,2034,2046,2060
WALLS = [2010, 2022, 2034, 2046, 2060]
DOOR_Z = 2006

# ---------------------------------------------------------------- build
b = []
b += [
    "# ===== ステージを建てる（毎回作り直すのでリセットにもなる） =====",
    "kill @e[type=minecraft:item_frame,tag=niji]",
    "fill 2000 150 2000 2074 156 2012 minecraft:stone_bricks hollow",
    "# 部屋ごとの内装（壁・腰壁・床・天井）",
]
# 部屋の内側の x 範囲と内装：(x1, x2, 壁, 腰壁, 床, 天井)
ROOMS = [
    (2001, 2009, "quartz_bricks", "purple_terracotta", "dark_oak_planks", "smooth_quartz"),       # ロビー
    (2011, 2021, "smooth_quartz", "light_blue_terracotta", "polished_diorite", "white_concrete"),  # エントランス
    (2023, 2033, "cherry_planks", "pink_terracotta", "birch_planks", "white_concrete"),           # 楽屋
    (2035, 2045, "gray_wool", "black_wool", "gray_concrete", "black_wool"),                       # 配信ブース
    (2047, 2059, "white_terracotta", "cyan_terracotta", "polished_deepslate", "white_concrete"),  # 編集室（天井は虹）
    (2061, 2073, "black_concrete", "purple_concrete", "smooth_quartz", "black_concrete"),          # メインスタジオ
]
# 仕切り壁は西側の部屋の壁と同じ素材にする
PARTITION = {2010: "quartz_bricks", 2022: "smooth_quartz", 2034: "cherry_planks", 2046: "gray_wool", 2060: "white_terracotta"}
for x1, x2, wall, base, floor, ceil in ROOMS:
    for z in (2000, 2012):
        b.append(f"fill {x1} 151 {z} {x2} 155 {z} minecraft:{wall}")
        b.append(f"fill {x1} 151 {z} {x2} 151 {z} minecraft:{base}")
    b.append(f"fill {x1} 150 2001 {x2} 150 2011 minecraft:{floor}")
    b.append(f"fill {x1} 156 2001 {x2} 156 2011 minecraft:{ceil}")
b.append("fill 2000 151 2001 2000 155 2011 minecraft:quartz_bricks")
b.append("fill 2074 151 2001 2074 155 2011 minecraft:black_concrete")
b.append("# 仕切り壁と扉（鉄格子）")
for w in WALLS:
    b.append(f"fill {w} 151 2001 {w} 155 2011 minecraft:{PARTITION[w]}")
    b.append(f"fill {w} 151 {DOOR_Z} {w} 152 {DOOR_Z} minecraft:iron_bars")
b.append("# 天井の照明（シーランタンを格子状に。編集室は虹の天井なので床に置く）")
for i, (x1, x2, *_rest) in enumerate(ROOMS):
    if i == 4:
        continue
    for x in range(x1 + 1, x2, 3):
        for z in (2003, 2006, 2009):
            b.append(f"setblock {x} 156 {z} minecraft:sea_lantern")
for x, z in [(2048, 2006), (2053, 2006), (2052, 2010), (2058, 2003)]:
    b.append(f"setblock {x} 150 {z} minecraft:sea_lantern")
b += [
    "# 飾り：ロビーとスタジオの壁に虹のライン、ロビーと楽屋にラグ",
]
RAINBOW_LINE = ["red", "orange", "yellow", "lime", "light_blue", "blue", "purple"]
for x in range(2001, 2010):
    b.append(f"setblock {x} 155 2000 minecraft:{RAINBOW_LINE[(x - 2001) % 7]}_wool")
for x in range(2061, 2074):
    for z in (2000, 2012):
        b.append(f"setblock {x} 155 {z} minecraft:{RAINBOW_LINE[(x - 2061) % 7]}_wool")
b += [
    "fill 2003 151 2004 2007 151 2008 minecraft:purple_carpet",
    "fill 2024 151 2004 2031 151 2008 minecraft:pink_carpet",
    "fill 2036 151 2010 2044 151 2010 minecraft:black_carpet",
]

# ---- ロビー
b += [
    "# ===== 0. ロビー =====",
    sign(2003, 152, 2001, "south", ["にじさんじ", "脱出ゲーム", "深夜のスタジオ", "非公式の二次創作"]),
    sign(2005, 152, 2001, "south", ["数字の答えは", "チャットで入力", "/trigger code", "set 数字"]),
    sign(2007, 152, 2001, "south", ["ヒントは各部屋の", "ボタン①②③", "①方向 ②ほぼ答え", "③答え"]),
    sign(2009, 152, 2005, "west", ["練習：", "/trigger code", "set 1 で", "扉が開くよ"]),
]

# ---- ヒントボタン（各部屋の西の壁）
HINT_Z = [2008, 2009, 2010]
for r, w in enumerate(WALLS, start=1):
    for lvl, z in enumerate(HINT_Z, start=1):
        b.append(f"setblock {w + 1} 152 {z} minecraft:stone_button[face=wall,facing=east]")
        b.append(sign(w + 1, 153, z, "east", ["", f"ヒント{'①②③'[lvl - 1]}", "", ""], wood="birch"))

# ---- かけらのチェスト（次の部屋の入口）
FRAG = [
    (2023, "blue_wool", "し", "aqua"),
    (2035, "purple_wool", "ん", "light_purple"),
    (2047, "red_wool", "は", "red"),
    (2061, "yellow_wool", "い", "yellow"),
]
b.append("# かけらのチェスト（謎を解いた先の部屋に置いてある）")
for x, wool, ch, col in FRAG:
    b.append(
        f"setblock {x} 151 2011 minecraft:chest[facing=east]{{CustomName:'\"記念配信データ\"',Items:[{item(wool, f'かけら「{ch}」', col)}]}}"
    )

# ---- 1. エントランス
b += [
    "# ===== 1. エントランス：入館コード 3142 =====",
    "fill 2018 151 2003 2018 151 2009 minecraft:spruce_planks",
    sign(2017, 151, 2005, "west", ["入館コード", "①咲いた花", "②空っぽの額縁", ""], wood="spruce"),
    sign(2017, 151, 2007, "west", ["③消えた灯り", "④白紙の名札", "①～④の数を", "順に4桁で"], wood="spruce"),
    "# 植木鉢（花は3つ）",
    "setblock 2012 151 2001 minecraft:potted_poppy",
    "setblock 2014 151 2001 minecraft:potted_cactus",
    "setblock 2016 151 2001 minecraft:potted_dandelion",
    "setblock 2012 151 2011 minecraft:potted_oak_sapling",
    "setblock 2014 151 2011 minecraft:potted_blue_orchid",
    "setblock 2016 151 2011 minecraft:potted_dead_bush",
    "# 額縁（空は1つ）",
]
frames = [
    (2012, 2001, 3, "emerald"),
    (2014, 2001, 3, "music_disc_cat"),
    (2016, 2001, 3, None),
    (2020, 2001, 3, "amethyst_shard"),
    (2013, 2011, 2, "heart_of_the_sea"),
    (2019, 2011, 2, "nether_star"),
]
for x, z, facing, it in frames:
    it_nbt = f',Item:{{id:"minecraft:{it}",count:1}}' if it else ""
    b.append(f'summon minecraft:item_frame {x} 153 {z} {{Facing:{facing}b,Fixed:1b,Invulnerable:1b,Tags:["niji"]{it_nbt}}}')
b += [
    "# ランプ（消えているのは4つ。1つはカウンターの裏）",
    "setblock 2012 156 2004 minecraft:redstone_block",
    "setblock 2012 155 2004 minecraft:redstone_lamp[lit=true]",
    "setblock 2015 156 2008 minecraft:redstone_block",
    "setblock 2015 155 2008 minecraft:redstone_lamp[lit=true]",
    "setblock 2015 155 2004 minecraft:redstone_lamp",
    "setblock 2012 155 2008 minecraft:redstone_lamp",
    "setblock 2020 155 2008 minecraft:redstone_lamp",
    "setblock 2020 151 2003 minecraft:redstone_lamp",
    "# 名札（白紙は2枚。1枚はカウンターの内側）",
    sign(2013, 152, 2011, "north", ["【名札】", "", "スタッフ 田中", ""]),
    sign(2015, 152, 2011, "north", ["【名札】", "", "", ""]),
    sign(2017, 152, 2011, "north", ["【名札】", "", "スタッフ 佐藤", ""]),
    sign(2018, 152, 2001, "south", ["【名札】", "", "スタッフ 鈴木", ""]),
    sign(2019, 151, 2005, "east", ["【名札】", "", "", ""]),
]

# ---- 2. 楽屋
DRESSERS = [
    (2024, "A", ["甘いお菓子は", "今日はいらない", "果物も気分じゃ", "ないな"]),
    (2026, "B", ["オーブンで", "焼いたものは", "ちょっと…", ""]),
    (2028, "C", ["りんごを頂いた", "人の楽屋は", "わたしの", "すぐ左だよ"]),
    (2030, "D", ["ろうそくは", "立てなくて", "いいよ", ""]),
]
b.append("# ===== 2. 楽屋：差し入れの論理パズル =====")
for x, who, memo in DRESSERS:
    b.append(f"setblock {x} 151 2001 minecraft:barrel[facing=up]{{CustomName:'\"納品箱 {who}\"'}}")
    b.append(sign(x, 152, 2001, "south", memo, wood="cherry"))
    b.append(sign(x, 153, 2001, "south", ["", f"ライバー{who}", "の楽屋", ""], wood="cherry"))
foods = ["cookie", "apple", "cake", "golden_carrot", "bread", "melon_slice", "pumpkin_pie", "golden_apple"]
food_items = ",".join(item(fd, slot=9 + i) for i, fd in enumerate(foods))
b += [
    f"setblock 2032 151 2011 minecraft:barrel[facing=up]{{CustomName:'\"冷蔵庫\"',Items:[{food_items}]}}",
    sign(2031, 152, 2011, "north", ["", "給湯室", "", ""]),
    sign(2032, 152, 2011, "north", ["発注メモ", "今日の差し入れ", "クッキー・りんご", "ケーキ・金のニンジン"]),
    sign(2033, 152, 2011, "north", ["一人1つずつ", "納品箱には", "1つだけ", "入れてね"]),
]

# ---- 3. 配信ブース
COMMENTS = [
    # x, y, 名前, モデレーターか, 時刻, 本文2行。青い名前（モデレーター）を古い順に並べた頭文字が「よんななにいち」＝4721
    (2037, 153, "つきみ", True, "20:49", ["にぎやかに", "なってきた"]),
    (2038, 153, "ねこまる", False, "20:42", ["初見です", ""]),
    (2039, 153, "ほしぞら", True, "20:43", ["ん？音量", "小さくない？"]),
    (2040, 153, "とまと", False, "20:48", ["こんばんは〜", ""]),
    (2041, 153, "あめふり", True, "20:55", ["ちゃんと水分", "とってね"]),
    (2042, 153, "かぜ", False, "20:46", ["待機！", ""]),
    (2043, 153, "ゆきだるま", True, "20:41", ["よし、みんな", "集まってきたね"]),
    (2037, 152, "みかん", False, "20:56", ["ぎりぎり", "間に合った"]),
    (2038, 152, "にじいろ", True, "20:47", ["ながら見の人も", "ゆっくりしてね"]),
    (2039, 152, "ぺんぎん", False, "20:50", ["わくわく", ""]),
    (2040, 152, "そらまめ", True, "20:52", ["いよいよだね", ""]),
    (2041, 152, "くじら", False, "20:44", ["8888", ""]),
    (2042, 152, "もみじ", True, "20:45", ["なつかしい", "BGMだ"]),
    (2043, 152, "たぬき", False, "20:53", ["草", ""]),
]
book = (
    '"minecraft:written_book_content":{title:"伝言",author:"配信者",pages:['
    + js("スタッフさんへ\n\n今日は声だけの配信。顔は映さないよ。\n\n声が届かなかったら意味ないよね。")
    + ","
    + js("BGMはマイクと反対にしておいて。\n\n照明はカメラと逆で！\n\nよろしくね。")
    + "]}"
)
b += [
    "# ===== 3. 配信ブース：コメント欄と伝言 =====",
    sign(2036, 152, 2011, "north", ["配信ルール", "モデレーターは", "名前が青い", ""], wood="dark_oak"),
    sign(2037, 152, 2011, "north", ["大事なことは", "古い順に", "頭文字だけ", ""], wood="dark_oak"),
]
for x, y, name, mod, t, text in COMMENTS:
    name_c = js(name, color="blue" if mod else "dark_gray", bold=mod)
    b.append(sign(x, y, 2001, "south", [name_c, t] + text, wood="birch"))
b += [
    "# 配信者ロッカー（暗証番号 4721 で開いて伝言の本が出てくる）",
    "fill 2035 151 2003 2035 153 2005 minecraft:bookshelf",
    "fill 2045 151 2001 2045 153 2005 minecraft:bookshelf",
    "fill 2045 151 2003 2045 152 2003 minecraft:iron_block",
    sign(2044, 152, 2003, "west", ["配信者ロッカー", "暗証番号4桁", "/trigger code", "set 番号"], wood="dark_oak"),
    "# 配信卓とレバー",
    "# 台はレッドストーンランプ：レバーをONにすると台が光る（間はハーフブロックで隣に伝わらない）",
    "fill 2038 151 2008 2044 151 2008 minecraft:polished_blackstone_slab",
]
for x, label in zip(LEVER_X, ["マイク", "カメラ", "BGM", "照明"]):
    b.append(f"setblock {x} 151 2008 minecraft:redstone_lamp")
    b.append(f"setblock {x} 152 2008 minecraft:lever[face=floor,facing=north]")
    b.append(sign(x, 151, 2007, "north", ["", label, "", ""], wood="dark_oak"))

# ---- 4. 編集室
RAINBOW = ["red", "orange", "yellow", "lime", "light_blue", "blue", "purple"]
b.append("# ===== 4. 編集室：鏡うつしの虹色暗号 4173 =====")
for i, c in enumerate(RAINBOW):
    b.append(f"fill {2048 + i} 156 2001 {2048 + i} 156 2011 minecraft:{c}_wool")
b += [
    "setblock 2050 150 2003 minecraft:sea_lantern",
    "setblock 2050 150 2009 minecraft:sea_lantern",
    "setblock 2057 150 2003 minecraft:sea_lantern",
    sign(2047, 152, 2003, "east", ["", "にじは7色", "はじまりは1", ""]),
    sign(2050, 152, 2001, "south", ["編集長メモ", "パスワードは", "窓の向こうの", "4色"], wood="spruce"),
    sign(2051, 152, 2001, "south", ["ただし向こうは", "鏡の国。", "見たまま読んでは", "いけない"], wood="spruce"),
    "# 鏡の小部屋（ガラス越しにだけ見える）",
    "fill 2055 151 2007 2059 155 2007 minecraft:glass",
    "fill 2054 151 2007 2054 155 2011 minecraft:stone_bricks",
    "setblock 2057 150 2009 minecraft:sea_lantern",
    "setblock 2059 152 2011 minecraft:yellow_concrete",
    "setblock 2058 152 2011 minecraft:purple_concrete",
    "setblock 2057 152 2011 minecraft:red_concrete",
    "setblock 2056 152 2011 minecraft:lime_concrete",
]

# ---- 5. メインスタジオ
LETTERS = [(2002, "さ", "decoy"), (2003, "し", "shi"), (2004, "は", "ha"), (2005, "ろ", "decoy"),
           (2007, "ん", "n"), (2008, "い", "i"), (2009, "く", "decoy"), (2010, "て", "decoy")]
b += [
    "# ===== 5. メインスタジオ：配信開始 =====",
    "fill 2070 150 2001 2073 150 2011 minecraft:purple_concrete",
    sign(2073, 153, 2006, "west", ["かけらを", "にじの順に", "それが今夜の", "合言葉"], wood="birch"),
]
for z, ch, _ in LETTERS:
    b.append(f"setblock 2073 152 {z} minecraft:polished_blackstone_button[face=wall,facing=west]")
    b.append(sign(2073, 153, z, "west", ["", ch, "", ""], wood="birch"))
# 見えない光源ブロックで部屋全体を明るくする（天井近くに格子状に置く）
b.append("# 見えない光源（light ブロック）で全室を明るくする")
for x in range(2002, 2074, 3):
    if x in WALLS:
        continue
    for z in (2002, 2006, 2010):
        b.append(f"setblock {x} 154 {z} minecraft:light[level=15]")
b += [
    "# 作り直しで散らばったアイテムを消す",
    "kill @e[type=minecraft:item,x=2000,y=150,z=2000,dx=74,dy=8,dz=12]",
]
f("build", *b)

# ---------------------------------------------------------------- load / tick / start / stop
f("load",
  "# データパック読み込み時に実行される",
  "scoreboard objectives add niji dummy",
  "scoreboard objectives add code trigger",
  "execute unless score #running niji matches 0.. run scoreboard players set #running niji 0",
  "forceload add 2000 2000 2074 2012",
  'tellraw @a [{"text":"[にじさんじ脱出] ","color":"light_purple"},{"text":"読み込み完了！ /function niji:start でゲーム開始","color":"white"}]')

f("tick",
  "# 毎tick実行。ゲーム中だけ判定を動かす",
  "execute if score #running niji matches 1 run function niji:game_tick")

story1 = "今日はにじさんじ配信スタジオでの初出勤日。\n\n深夜0時からは大事な記念配信がある。\n\nところが停電でセキュリティが誤作動し、扉が全部ロックされてしまった！"
story2 = "ライバーさんたちのメモを頼りにロックを解除し、記念配信データのかけら4つを集めて、メインスタジオで配信を始めよう。\n\n※非公式の二次創作です"
f("start",
  "# ゲーム開始（何度でもやり直せる）",
  "function niji:build",
  *[f"scoreboard players set #{k} niji 0" for k in ["door0", "door1", "door2", "door3", "door4", "locker", "seq", "time", "hints"]],
  "scoreboard players set #running niji 1",
  "scoreboard players set @a code 0",
  "clear @a",
  "effect clear @a",
  "gamemode adventure @a",
  "tp @a 2003.5 151 2006.5 -90 0",
  f'give @a minecraft:written_book[minecraft:written_book_content={{title:"はじめに",author:"スタジオ",pages:[{js(story1)},{js(story2)}]}}]',
  "title @a times 10 60 20",
  'title @a subtitle {"text":"0時の記念配信までに脱出せよ","color":"gray"}',
  'title @a title {"text":"深夜のスタジオ","color":"light_purple","bold":true}',
  "execute as @a at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 1 0.5")

f("stop",
  "# ゲームを中断してクリエイティブに戻す（編集・テスト用）",
  "scoreboard players set #running niji 0",
  "gamemode creative @s",
  'tellraw @s {"text":"ゲームを中断しました","color":"gray"}')

gt = [
    "scoreboard players add #time niji 1",
    "",
    "# 数字の入力（/trigger code set 数字）",
    "scoreboard players enable @a code",
    "execute as @a[scores={code=1..}] run function niji:code",
    "execute as @a[scores={code=..-1}] run scoreboard players set @s code 0",
    "",
    "# 謎2：納品箱に正しい差し入れが1つずつ入っている",
    "execute store result score #ba niji run data get block 2024 151 2001 Items",
    "execute store result score #bb niji run data get block 2026 151 2001 Items",
    "execute store result score #bc niji run data get block 2028 151 2001 Items",
    "execute store result score #bd niji run data get block 2030 151 2001 Items",
    "execute if score #door1 niji matches 1 if score #door2 niji matches 0 "
    "if score #ba niji matches 1 if score #bb niji matches 1 if score #bc niji matches 1 if score #bd niji matches 1 "
    "if items block 2024 151 2001 container.* minecraft:golden_carrot "
    "if items block 2026 151 2001 container.* minecraft:apple "
    "if items block 2028 151 2001 container.* minecraft:cake "
    "if items block 2030 151 2001 container.* minecraft:cookie run function niji:open/door2",
    "",
    "# 謎3：マイクON・カメラOFF・BGM OFF・照明ON",
    "execute if score #locker niji matches 1 if score #door3 niji matches 0 "
    "if block 2038 152 2008 minecraft:lever[powered=true] "
    "if block 2040 152 2008 minecraft:lever[powered=false] "
    "if block 2042 152 2008 minecraft:lever[powered=false] "
    "if block 2044 152 2008 minecraft:lever[powered=true] run function niji:open/door3",
    "",
    "# 謎5：文字ボタン",
]
for z, ch, fn in LETTERS:
    gt.append(f"execute if score #door4 niji matches 1 if block 2073 152 {z} minecraft:polished_blackstone_button[powered=true] run function niji:studio/press_{fn if fn != 'decoy' else 'decoy'}_{z}")
gt += ["", "# ヒントボタン"]
for r, w in enumerate(WALLS, start=1):
    for lvl, z in enumerate(HINT_Z, start=1):
        gt.append(f"execute if block {w + 1} 152 {z} minecraft:stone_button[powered=true] run function niji:hint/r{r}_{lvl}")
f("game_tick", *gt)

f("code",
  "# /trigger code で数字が入力された（入力したプレイヤーとして実行）",
  "scoreboard players set #ok niji 0",
  "execute if score #door0 niji matches 0 if score @s code matches 1 run function niji:open/door0",
  "execute if score #door0 niji matches 1 if score #door1 niji matches 0 if score @s code matches 3142 run function niji:open/door1",
  "execute if score #door2 niji matches 1 if score #locker niji matches 0 if score @s code matches 4721 run function niji:open/locker",
  "execute if score #door3 niji matches 1 if score #door4 niji matches 0 if score @s code matches 4173 run function niji:open/door4",
  'execute if score #ok niji matches 0 run tellraw @s [{"text":"コード ","color":"red"},{"score":{"name":"@s","objective":"code"},"color":"red"},{"text":" は違うみたい…","color":"red"}]',
  "execute if score #ok niji matches 0 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1",
  "scoreboard players set @s code 0")

DOOR_MSG = ["練習成功！ 扉が開いた。ここからが本番だ", "入館コード認証。エントランスのロックが外れた！",
            "差し入れ完了！ 楽屋の扉が開いた", "配信設定OK！ ブースの扉が開いた", "パスワード認証。編集室のロックが外れた！"]
for i, (w, msg) in enumerate(zip(WALLS, DOOR_MSG)):
    f(f"open/door{i}",
      f"scoreboard players set #door{i} niji 1",
      "scoreboard players set #ok niji 1",
      f"fill {w} 151 {DOOR_Z} {w} 152 {DOOR_Z} minecraft:air",
      f'tellraw @a {{"text":"{msg}","color":"green"}}',
      "execute as @a at @s run playsound minecraft:block.iron_door.open master @s ~ ~ ~ 1 1")

f("open/locker",
  "scoreboard players set #locker niji 1",
  "scoreboard players set #ok niji 1",
  "setblock 2045 152 2003 minecraft:bookshelf",
  f"setblock 2045 151 2003 minecraft:barrel[facing=west]{{CustomName:'\"配信者ロッカー\"',Items:[{item('written_book', extra=book)}]}}",
  'tellraw @a {"text":"カチッ…配信者ロッカーが開いた！","color":"green"}',
  "execute as @a at @s run playsound minecraft:block.chest.open master @s ~ ~ ~ 1 1")

# ---- 文字ボタン
NEED = {"ha": 0, "i": 1, "shi": 2}
for z, ch, fn in LETTERS:
    lines = [f"setblock 2073 152 {z} minecraft:polished_blackstone_button[face=wall,facing=west]"]
    lines.append("scoreboard players set #hit niji 0")
    if fn in NEED:
        lines.append(f"execute if score #seq niji matches {NEED[fn]} run scoreboard players set #hit niji 1")
        lines.append("execute if score #hit niji matches 1 run function niji:studio/good")
    elif fn == "n":
        lines.append("execute if score #seq niji matches 3 run scoreboard players set #hit niji 1")
        lines.append("execute if score #hit niji matches 1 run function niji:clear")
    lines.append("execute if score #hit niji matches 0 run function niji:studio/fail")
    f(f"studio/press_{fn}_{z}", *lines)
f("studio/good",
  "scoreboard players add #seq niji 1",
  'title @a actionbar [{"text":"配信準備 ","color":"light_purple"},{"score":{"name":"#seq","objective":"niji"},"color":"yellow"},{"text":" / 4","color":"light_purple"}]',
  "execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1")
f("studio/fail",
  "scoreboard players set #seq niji 0",
  'tellraw @a {"text":"ブツッ…「配信事故です！」 最初からやり直し","color":"red"}',
  "execute as @a at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 0.5")

fw = ('summon minecraft:firework_rocket {x} 158 {z} {{LifeTime:30,FireworksItem:{{id:"minecraft:firework_rocket",count:1,'
      'components:{{"minecraft:fireworks":{{flight_duration:1b,explosions:[{{shape:"large_ball",colors:[I;16711680,16776960,65280,255,11141290],has_twinkle:true}}]}}}}}}}}')
f("clear",
  "# 配信開始！ クリア",
  "scoreboard players set #running niji 0",
  "scoreboard players set #20 niji 20",
  "scoreboard players set #60 niji 60",
  "scoreboard players operation #sec niji = #time niji",
  "scoreboard players operation #sec niji /= #20 niji",
  "scoreboard players operation #min niji = #sec niji",
  "scoreboard players operation #min niji /= #60 niji",
  "scoreboard players operation #sec niji %= #60 niji",
  "tp @a 2067.5 157 2006.5 90 0",
  "title @a times 10 100 20",
  'title @a subtitle [{"text":"クリアタイム ","color":"white"},{"score":{"name":"#min","objective":"niji"},"color":"yellow"},{"text":"分","color":"white"},{"score":{"name":"#sec","objective":"niji"},"color":"yellow"},{"text":"秒","color":"white"}]',
  'title @a title {"text":"配信開始！","color":"light_purple","bold":true}',
  fw.format(x=2064, z=2003),
  fw.format(x=2070, z=2009),
  fw.format(x=2067, z=2006),
  'tellraw @a {"text":"――スタジオに明かりが戻り、記念配信は無事に始まった。","color":"light_purple"}',
  'tellraw @a {"text":"「スタッフさん、ありがとう！ 最高の配信になったよ」","color":"white"}',
  'tellraw @a [{"text":"使ったヒント: ","color":"gray"},{"score":{"name":"#hints","objective":"niji"},"color":"yellow"},{"text":" 回　もう一度遊ぶには /function niji:start","color":"gray"}]',
  "execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1")

HINTS = {
    1: ["条件に合うものだけ数えよう", "カウンターの裏と、受付の内側も見た？", "答えは 3142"],
    2: ["発注メモの4つから、決めやすい人から埋めよう", "Aは金のニンジン、Bはりんご", "A金のニンジン・Bりんご・Cケーキ・Dクッキー"],
    3: ["青い名前のコメントだけを、時刻の古い順に並べよう", "頭文字は「よんななにいち」。ロッカーを開けたら、伝言はカメラから決めよう", "ロッカーは 4721。レバーはマイクON・カメラOFF・BGM OFF・照明ON"],
    4: ["天井の虹は数字の表", "鏡なので右から読む", "答えは 4173"],
    5: ["かけらの色に注目", "赤→黄→青→紫の順に並べよう", "は→い→し→ん の順に押す"],
}
for r, w in enumerate(WALLS, start=1):
    for lvl, z in enumerate(HINT_Z, start=1):
        f(f"hint/r{r}_{lvl}",
          f"setblock {w + 1} 152 {z} minecraft:stone_button[face=wall,facing=east]",
          "scoreboard players add #hints niji 1",
          f'tellraw @a [{{"text":"[ヒント{"①②③"[lvl - 1]}] ","color":"gold"}},{{"text":"{HINTS[r][lvl - 1]}","color":"white"}}]',
          "execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1")

# ---------------------------------------------------------------- write
if os.path.exists(OUT):
    shutil.rmtree(OUT)
for name, lines in files.items():
    p = os.path.join(FN, name + ".mcfunction")
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")
tags = os.path.join(OUT, "data", "minecraft", "tags", "function")
os.makedirs(tags, exist_ok=True)
for t in ["load", "tick"]:
    with open(os.path.join(tags, t + ".json"), "w", encoding="utf-8") as fh:
        json.dump({"values": [f"{NS}:{t}"]}, fh, indent=2)
        fh.write("\n")
with open(os.path.join(OUT, "pack.mcmeta"), "w", encoding="utf-8") as fh:
    json.dump({"pack": {"pack_format": 61, "description": "にじさんじ脱出ゲーム 難易度1 ベータ版 (Java 1.21.4)"}}, fh, ensure_ascii=False, indent=2)
    fh.write("\n")
print("wrote", len(files), "functions")
