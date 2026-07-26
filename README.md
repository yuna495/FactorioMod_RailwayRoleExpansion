# Railway Role Expansion

Railway Role Expansion は、Optera 氏の MIT ライセンス MOD「Train & Fuel Overhaul」をベースにした Factorio 2.0 向けの派生 MOD です。

鉄道そのものを扱いやすくしつつ、車両ごとの役割をより明確に分けることを目的としています。バニラ列車の基礎性能を調整し、重量物・短距離輸送向けの Industrial 系車両と、長距離・高速幹線輸送向けの Linehaul 系車両を追加します。

## 主な変更

- バニラの機関車、貨物車両、タンク貨車、長距離砲貨車の性能を再調整
- 産業用機関車、貨物車両、タンク貨車を追加
- 幹線輸送機関車、貨物車両、タンク貨車を追加
- 追加車両を解禁する研究 `Improved locomotives and wagons` を追加
- 列車重量、機関車出力、旧列車サウンド、手作業クラフト可否を起動時設定で調整可能

## 車両の役割

| 系統 | 用途 | 特徴 |
| --- | --- | --- |
| Standard | 汎用輸送 | バニラ車両を扱いやすく調整した基準系統 |
| Industrial | 工場内、短距離、重量物輸送 | 最高速度は低いが、牽引力、耐久、制動、積載量を重視 |
| Linehaul | 長距離、幹線、高速輸送 | 最高速度が高い一方、耐久、効率、制動性能は控えめ |

## 主な性能値

以下は起動時設定の倍率が `1.0` の場合の値です。

| 機関車 | 最高速度 | 出力 | 耐久値 | 燃料スロット | 役割 |
| --- | ---: | ---: | ---: | ---: | --- |
| Standard locomotive | 345.6 km/h | 1.8 MW | 1000 | 3 | 汎用 |
| Industrial locomotive | 237.6 km/h | 4.0 MW | 1200 | 2 | 重量物、短距離、高牽引 |
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

- Industrial 機関車: 機関車、発展回路、エネルギー効率モジュール
- Linehaul 機関車: 機関車、発展回路、速度モジュール
- Industrial 貨車/タンク貨車: 対応するバニラ車両、エネルギー効率モジュール
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
