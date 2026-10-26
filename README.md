# マイクラ 謎解き脱出ゲーム

Minecraft Java版 1.21.4 用の脱出ゲームのデータパックです。

## 遊び方
1. クリエイティブ・スーパーフラット（チート：オン）でワールドを作る
2. `escape_room` フォルダを `%appdata%\.minecraft\saves\<ワールド名>\datapacks\` にコピー
3. ワールドに入り `/function escape:start`

| コマンド | 内容 |
|---|---|
| `/function escape:start` | ステージを作り直してゲーム開始 |
| `/function escape:stop` | ゲームを中断してクリエイティブに戻る |

## ステージ
- 部屋1：色とレバーの謎
- 部屋2：樽の中の鍵
- 部屋3：数字の謎

---

# にじさんじ脱出ゲーム（難易度1）ベータ版

`nijisanji_escape` フォルダは、[設計書](docs/nijisanji-escape-design-beta.md) の5部屋・5つの謎を遊べるようにしたデータパックです（Java版 1.21.4、非公式の二次創作）。

## 遊び方
1. クリエイティブ・スーパーフラット（チート：オン）でワールドを作る
2. `nijisanji_escape` フォルダを `%appdata%\.minecraft\saves\<ワールド名>\datapacks\` にコピー
3. ワールドに入り `/function niji:start`
4. 数字の答えはチャットで `/trigger code set 3142` のように入力する（ロビーで `set 1` の練習ができます）

| コマンド | 内容 |
|---|---|
| `/function niji:start` | ステージを作り直してゲーム開始 |
| `/function niji:stop` | ゲームを中断してクリエイティブに戻る |

ステージは x=2000〜2074、y=150〜157、z=2000〜2012 に建ちます。各部屋の左の壁にあるボタン①②③でヒントが出ます。

`tools/gen_nijisanji.py` を実行するとデータパックを作り直せます（`python3 tools/gen_nijisanji.py nijisanji_escape`）。
