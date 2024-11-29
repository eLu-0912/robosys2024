# square rootコマンド

[![test](https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/eLu-0912/robosys2024/actions/workflows/test.yml)


## 概要

- 標準入力から読み込んだ数字の平方根を出力する。


## 必要なソフトウェア

- Python
 - テスト済みバージョン: 3.7~3.11

## テスト環境

- ubuntu 22.04


## インストール方法

- 以下の手順でプロジェクトを使用してください。
- githubリポジトリから以下のようにインストールしてください。
- 下記のコードをホームディレクトリでクローンしてください。
```
$ git clone git@github.com:eLu-0912/robosys2024.git
$ cd robosys2024
```

- githubアカウントがない方は以下のように
```
$ git clone https://github.com/eLu-0912/robosys2024.git
$ cd robosys2024
```


'square' スクリプトを実行可能にしてください。
```
$ chmod +x square
```

## 使い方

- 入力例1
```
$ seq 9 | ./square
```
- 実行結果
```
3.0
```

- 入力例2
```
echo -e "81" | ./square
```
-　実行結果
```
9.0
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます.
- ©2024 Takeru Harashima
