#!/bin/bash
 2 # SPDX-FileCopyrightText: 2026 Taro Suzuki
 3 # SPDX-License-Identifier: BSD-3-Clause
 4
 5 ng () {                               # 関数ngの定義（P18と同じ）
 6         echo ${1}行目のテスト失敗
 7         res=1                          # 失敗したことを記録
 8 }
 9
10 res=0                                  # 0: 失敗なし（ngが呼ばれると1になる）
11
12 out=$(seq 5 | ./plus)                  # 表の1行目: plusの出力を変数outに記録
13 [ "${out}" = 15 ] || ng "$LINENO"      # 期待する出力（15）でなければngを呼び出す
14
[ "${res}" = 0 ] && echo OK            # 通ったのが（人間に）分かるように表示
exit $res                              # 終了ステータスを返して終了（機械向け）
