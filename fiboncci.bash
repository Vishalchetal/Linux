#!/bin/bash

if [[ $# != 1 ]]; then
  echo Usage: $0 '<number>'
  exit
fi

Fn_2=0  # F0 = 0
Fn_1=1  # F1 = 1

i=2

while [[ $i -le $1 ]]; do
  let "Fn = $Fn_2 + $Fn_1"
  let "Fn_2 = $Fn_1"
  let "Fn_1 = $Fn"
  let "i = $i + 1"
done

echo Fibonacci of $1 is $Fn
