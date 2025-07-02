#!/bin/bash

echo "Welcome to the calculator. very generic."
# IFS=" " read -p "testing this: " t1 t2 t3
re='^[0-9]+([.][0-9]+)?$'

read -p $'enter your expression\n-> ' expression

if [[ ! $expression =~ $re ]]; then
  echo "invalid expression. bye"
  exit 0
fi


echo "$expression"
