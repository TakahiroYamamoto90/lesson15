#!/bin/bash

result=$(./hello.sh) # 実⾏結果をansに

if [ $result = "hello" ] ; then # resultの中⾝がhelloなら
  echo "OK" # OK
  exit 0
else # そうでないなら
  echo "NG" # NG
  exit 1
fi
