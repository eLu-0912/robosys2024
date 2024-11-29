# square rootコマンド

[![test](https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml)


## 概要

- 標準入力から読み込んだ数字の平方根を出力する。


## 必要なソフトウェア

- Python
 - テスト済みバージョン: 3.7~3.11

## テスト環境

- ubuntu 22.04 LTS


## 使用準備

- 以下の手順でプロジェクトを使用してください。
- githubリポジトリから以下のようにインストールしてください。

- リポジトリをクローンしてください。
```
$ git clone https://github.com/eLu-0912/robosys2024.git
```
- github アカウントがある方はこちらでも可能です。
```
$ git clone git@github.com:eLu-0912/robosys2024.git
```

- ディレクトリに移動してください。
```
$ cd robosys2024
```

- 'square' スクリプトを実行可能にしてください。
```
$ chmod +x squareroot
```

## 使い方

- 入力例1
```
$ seq 9 | ./squareroot
```

- 実行結果
```
3.0
```

- 入力例2
```
echo -e "81" | ./squareroot
```

- 実行結果
```
9.0
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp/robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- ©2024 Takeru Harashima
