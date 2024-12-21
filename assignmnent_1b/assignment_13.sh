#!/bin/bash

read -p "Enter a number: " num

a=0
b=1
next=0

while [ $next -le $num ]; do
  if [ $next -eq $num ]; then
    echo "$num is a Fibonacci number"
    exit 0
  fi
  next=$((a+b))
  a=$b
  b=$next
done

echo "$num is not a Fibonacci number"
