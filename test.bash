#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Takeru Harashima
# SPDX-License-Identifier: BSD-3-Clause


ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0


out=$(seq 4 | ./squareroot)
[ "${out}" = 2.0 ] || ng "$LINENO"

out=$(seq 9 | ./square)
[ "${out}" = "3.0" ] || ng "$LINENO"

out=$(echo あ | ./squareroot)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo  "" | ./squareroot)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit $res
