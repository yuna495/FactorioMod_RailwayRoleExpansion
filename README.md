# Railway Role Expansion

Railway Role Expansion is a Factorio 2.0 mod derived from Optera's MIT-licensed mod Train & Fuel Overhaul / Train Overhaul.

The goal is to make railway logistics easier to use while giving each train type a clearer operational role. It improves the baseline vanilla train experience and adds Industrial vehicles for short-distance, high-load service and Linehaul vehicles for high-speed long-distance mainline transport.

## Main Features

- Improves the performance of vanilla locomotives, cargo wagons, fluid wagons, and artillery wagons
- Adds industrial locomotives, cargo wagons, and fluid wagons
- Adds linehaul locomotives, cargo wagons, and fluid wagons
- Adds the `Improved locomotives and wagons` technology to unlock the new vehicles
- Provides startup settings for train weight, locomotive power, classic train sounds, and hand crafting

## Vehicle Roles

The standard vanilla-style train set is adjusted to make rail transport comfortable on its own. Choosing Industrial or Linehaul vehicles then lets you further optimize your railway network for specific use cases.

| Class | Use case | Characteristics |
| --- | --- | --- |
| Standard | General transport | Versatile baseline vehicles tuned to be easier to use |
| Industrial | Factory interiors, short routes, heavy loads | Lower top speed, with stronger acceleration, durability, braking, and capacity |
| Linehaul | Long-distance, mainline, high-speed transport | High top speed, with lower traction, durability, efficiency, and braking performance |

Typical usage:

- Standard
  - Short-distance transport through artillery wagon service
  - Works well with a wide range of consists such as LCC through LCCC
- Industrial
  - Useful for short consists such as LCC or LCCL where acceleration and braking matter, especially inside factories with many intersections
  - Large-capacity wagons reduce the number of round trips even with shorter trains
- Linehaul
  - Useful for long-distance transport built around longer consists such as LLCC or LLLLCCCC
  - Wagons have lower capacity, but dedicated direct routes that allow trains to maintain top speed can provide faster throughput

## Main Stats

The following values assume startup multipliers are set to `1.0`.

| Locomotive | Top speed | Power | Health | Fuel slots | Role |
| --- | ---: | ---: | ---: | ---: | --- |
| Standard locomotive | 345.6 km/h | 1.8 MW | 1000 | 3 | General |
| Industrial locomotive | 237.6 km/h | 4.0 MW | 1200 | 2 | Heavy-load, short-distance, strong acceleration/braking |
| Linehaul locomotive | 604.8 km/h | 1.3 MW | 800 | 4 | Long-distance, high-speed mainline |

| Wagon | Top speed | Capacity | Health | Role |
| --- | ---: | ---: | ---: | --- |
| Standard cargo wagon | 345.6 km/h | 60 slots | 600 | General cargo |
| Industrial cargo wagon | 237.6 km/h | 80 slots | 800 | Large-capacity cargo |
| Linehaul cargo wagon | 604.8 km/h | 50 slots | 500 | High-speed cargo |
| Standard fluid wagon | 345.6 km/h | 35,000 fluid | 600 | General fluid |
| Industrial fluid wagon | 237.6 km/h | 40,000 fluid | 800 | Large-capacity fluid |
| Linehaul fluid wagon | 604.8 km/h | 30,000 fluid | 500 | High-speed fluid |
| Artillery wagon | 324.0 km/h | - | 1000 | Artillery transport |

## Technology and Recipes

Additional vehicles are unlocked by the `rre-improved-trains` technology.

- Prerequisite: `braking-force-2`
- Research cost: 400 sets of automation, logistic, and chemical science packs
- Research time: 30 seconds

Additional vehicles are crafted by refitting existing vanilla train vehicles.

- Industrial locomotive: locomotive, advanced circuits, productivity modules
- Linehaul locomotive: locomotive, advanced circuits, speed modules
- Industrial cargo/fluid wagons: matching vanilla wagon, productivity modules
- Linehaul cargo/fluid wagons: matching vanilla wagon, speed modules

By default, train upgrades require an assembling machine. Hand crafting can be enabled with a startup setting.

## Settings

| Setting | Default | Description |
| --- | ---: | --- |
| `rre-weight-multiplicator` | `1.0` | Multiplier applied to train weight |
| `rre-power-multiplicator` | `1.0` | Multiplier applied to locomotive power |
| `rre-old-sounds` | `true` | Uses classic train sounds |
| `rre-hand-crafting` | `false` | Allows hand crafting for train upgrades |

## Compatibility

This mod changes vehicle prototypes, items, recipes, and technology during the data stage. It does not include any runtime `control.lua` logic.

Mods that change the same vanilla train prototypes, train recipes, train icons, or train sounds may conflict depending on load order and overwrite behavior.

## Credits

- Original mod: Train & Fuel Overhaul / Train Overhaul
- Original author: Optera
- Original license: MIT License
- Fork and modifications: Railway Role Expansion by yuna495

The original copyright notice and MIT License text are retained in `License.md`. Unless otherwise noted, additions and modifications made for this derivative mod are also provided under the MIT License.

---

# Railway Role Expansion

Railway Role Expansion は、Optera 氏の MIT ライセンス MOD「Train & Fuel Overhaul」をベースにした Factorio 2.0 向けの派生 MOD です。

鉄道そのものを扱いやすくしつつ、車両ごとの役割をより明確に分けることを目的としています。バニラ列車の基礎性能を調整し、重量物・短距離輸送向けの Industrial 系車両と、長距離・高速幹線輸送向けの Linehaul 系車両を追加します。

## 主な変更

- バニラの機関車、貨物車両、タンク貨車、長距離砲貨車の性能を向上
- 産業用機関車、貨物車両、タンク貨車を追加
- 幹線輸送機関車、貨物車両、タンク貨車を追加
- 追加車両を解禁する研究 `Improved locomotives and wagons` を追加
- 列車重量、機関車出力、旧列車サウンド、手作業クラフト可否を起動時設定で調整可能

## 車両の役割

バニラ機関車のみでも鉄道輸送が快適になるように調整しつつ、各機関車・貨車を選択することで、さらに運用を最適化できる構成を目指しています。

| 系統 | 用途 | 特徴 |
| --- | --- | --- |
| Standard | 汎用輸送 | バニラ車両を扱いやすく調整した万能系統 |
| Industrial | 工場内、短距離、重量物輸送 | 最高速度は低いが、牽引力、耐久、制動、積載量を重視 |
| Linehaul | 長距離、幹線、高速輸送 | 最高速度が高い一方、牽引力、耐久、効率、制動性能は低い |

想定使用方法:

- Standard
  - 近距離輸送から長距離砲輸送まで
  - LCC から LCCC など、幅広い編成に有効で、さまざまな場面で活躍できます
- Industrial
  - LCC や LCCL などの短編成で、交差点の多い工場内部での再加速、制動力が重視される場面で活躍します
  - 貨車は大容量のため、短編成でも往復回数を減らすことができます
- Linehaul
  - LLCC や LLLLCCCC など、長編成を前提とした長距離輸送で活躍します
  - 貨車の容量は控えめですが、最高速を維持できる直通線路を引くことで、より高速な輸送を実現できます

## 主な性能値

以下は起動時設定の倍率が `1.0` の場合の値です。

| 機関車 | 最高速度 | 出力 | 耐久値 | 燃料スロット | 役割 |
| --- | ---: | ---: | ---: | ---: | --- |
| Standard locomotive | 345.6 km/h | 1.8 MW | 1000 | 3 | 汎用 |
| Industrial locomotive | 237.6 km/h | 4.0 MW | 1200 | 2 | 重量物、短距離、高加減速 |
| Linehaul locomotive | 604.8 km/h | 1.3 MW | 800 | 4 | 長距離、高速幹線 |

| 貨車 | 最高速度 | 容量 | 耐久値 | 役割 |
| --- | ---: | ---: | ---: | --- |
| Standard cargo wagon | 345.6 km/h | 60 slots | 600 | 汎用貨物 |
| Industrial cargo wagon | 237.6 km/h | 80 slots | 800 | 大容量貨物 |
| Linehaul cargo wagon | 604.8 km/h | 50 slots | 500 | 高速貨物 |
| Standard fluid wagon | 345.6 km/h | 35,000 fluid | 600 | 汎用流体 |
| Industrial fluid wagon | 237.6 km/h | 40,000 fluid | 800 | 大容量流体 |
| Linehaul fluid wagon | 604.8 km/h | 30,000 fluid | 500 | 高速流体 |
| Artillery wagon | 324.0 km/h | - | 1000 | 長距離砲輸送 |

## 研究とレシピ

追加車両は研究 `rre-improved-trains` で解禁されます。

- 前提研究: `braking-force-2`
- 研究コスト: 赤、緑、青サイエンス各 1 個を 400 セット
- 研究時間: 30 秒

追加車両は既存車両を改造する形で作成します。

- Industrial 機関車: 機関車、発展回路、生産力モジュール
- Linehaul 機関車: 機関車、発展回路、速度モジュール
- Industrial 貨車/タンク貨車: 対応するバニラ車両、生産力モジュール
- Linehaul 貨車/タンク貨車: 対応するバニラ車両、速度モジュール

通常は組立機によるクラフトが必要です。起動時設定で手作業クラフトを許可できます。

## 設定

| 設定名 | 既定値 | 内容 |
| --- | ---: | --- |
| `rre-weight-multiplicator` | `1.0` | 列車重量にかかる倍率 |
| `rre-power-multiplicator` | `1.0` | 機関車出力にかかる倍率 |
| `rre-old-sounds` | `true` | 旧バージョン風の列車走行音を使用 |
| `rre-hand-crafting` | `false` | 列車アップグレードの手作業クラフトを許可 |

## 互換性

この MOD はデータ段階で車両プロトタイプ、アイテム、レシピ、研究を変更します。`control.lua` による実行時処理はありません。

同じバニラ列車プロトタイプ、列車レシピ、列車アイコン、列車サウンドを変更する MOD とは、読み込み順や上書き内容によって競合する可能性があります。

## クレジット

- Original MOD: Train & Fuel Overhaul / Train Overhaul
- Original author: Optera
- Original license: MIT License
- Fork and modifications: Railway Role Expansion by yuna495

元 MOD の著作権表示と MIT ライセンス本文は `License.md` に保持しています。この派生 MOD で追加・変更された部分も、特記がない限り MIT License として扱います。
