#!/bin/bash
read -p "Enter a number: " num
for ((i=2; i<num; i++)); do
  if [ $((num % i)) -eq 0 ]; then
    echo "$num is not a prime number."
    exit
  fi
done
echo "$num is a prime number."
