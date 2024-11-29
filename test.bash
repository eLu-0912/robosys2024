#!/bin/bash -xv


ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0


out=$(seq 4 | ./square)
[ "${out}" = 2.0 ] || ng "$LINENO"

out=$(seq 9 | ./square)
[ "${out}" = "3.0" ] || ng "$LINENO"


out=$(echo あ | ./square)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  "" | ./square)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit $res
