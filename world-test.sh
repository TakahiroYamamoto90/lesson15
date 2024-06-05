#!/bin/bash

ERROR_EXIT () { # ERROR関数
  echo "$1" >&2 # エラーメッセージ(引数1)を標準エラー出⼒に表⽰
  rm -f /tmp/$$-* # 作ったファイルの削除
  exit 1 # エラー終了
}

./hello.sh > /tmp/$$-result # 結果データをresult-$$

echo "hello" > /tmp/$$-ans # 正解データ（⼿作り）をans-$$に
echo "world" >> /tmp/$$-ans

diff /tmp/$$-ans /tmp/$$-result && echo "OK" || ERROR_EXIT "result err" # 失敗

rm /tmp/$$-ans /tmp/$$-result # 後始末
