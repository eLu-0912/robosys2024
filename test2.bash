#!/bin/bash -xv
# SPDX-FileCopyrightText: 2022 Ryuichi Ueda
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0

###nomal###
out=$(seq 5 | ./plus_stdin)
[ "${out}" = 15 ] || ng "LINENO"

###strange###
out=$(seq あ | ./plus_stdin)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./plus_stdin) 
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"


[ "${res}" = 0 ] && echo OK
exit $res