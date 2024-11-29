# square rootコマンド

[![test](https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml/badge.svg)]((https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml)

##概要
標準入力から読み込んだ数字の平方根を出力する。

##必要なソフトウェア
- Python
 - テスト済みバージョン: 3.7~3.11

##テスト環境
- ubuntu 22.04

##使用方法
以下の手順でプロジェクトを使用してください。
githubリポジトリから以下のようにインストールしてください。
git clone git@github.com:eLu-0912/robosys2024.git
cd B/robosys2024

githubアカウントがない方は以下のように
git clone https://github.com/eLu-0912/robosys2024.git
cd B/robosys2024

'square' スクリプトを実行可能にしてください。
chmod +x square

##使い方
使用例
seq 9 | ./square
実行結果
3.0

サンプルコード

import sys
import math


def tonum(s):
    try:
        return int(s)

    except:
        return float(s)

ans = 0
for line in sys.stdin:
    line = line.rstrip()
    num = tonum(line)

    ans = math.sqrt(num)

print(ans)

##ライセンス
-このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.

-©2024 Takeru Harashima
