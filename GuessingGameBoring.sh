#!/bin/bash
re='^[0-9]+$'

getNumber () {
  if [[ $1 -lt 42 ]]; then
    echo "Too low"
  elif [[ $1 -gt 42 ]];then
    echo "Too High"
  else
    echo "Correct!"
    exit
  fi
}

while :
do
    read -p "Enter your guess number: " number
    if [[ $number =~ $re ]]; then
      getNumber number
    else
      echo "That Is Not a Number"
    fi
done
