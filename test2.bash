#!/bin/bash 


ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0
out=$(seq 5 | ./plus_stdin) 
[ "${out}" = 15 ] || ng "$LINENO"
  　
### STRANGE INPUT ###
out=$(echo あ | ./plus_stdin)           #計算できない値を入力してみる
[ "$?" = 1 ]      || ng "$LINENO" #終了ステータスが1なのを確認
[ "${out}" = "" ] || ng "$LINENO" #この行と上の行は入れ替えるとダメです
  　                                      #（↑なぜかは考えてみましょう）
out=$(echo | ./plus_stdin)              #なにも入力しない
[ "$?" = 1 ]      || ng "$LINENO" #これも異常終了する
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
