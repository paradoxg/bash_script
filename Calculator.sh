#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
nocolor='\033[0m' # No Color
# to check if var is number
re='^[0-9]+$'

echo "Welcome to the calculator"
while :
do
    read -p "Enter first number: " first_number
    read -p "Enter second number: " second_number
    while  ! [[ $first_number =~ $re ]] && [[ $second_number =~ $re ]]; do
      echo "Please insert correct values"
      read -p "Enter first number: " first_number
      read -p "Enter second number: " second_number
    done
    # bash check if var is numbers
    #https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash

    echo
    printf "${blue}1. Adition numbers\n"
    printf "${green}2. Subtraction numbers\n"
    printf "${red}3. Multiplication \n"
    printf "${purple}4. Copy a folder\n${nocolor}"
    echo
    echo "5. Exit"
    case $correct in
      1)

      ;;
      2)

      ;;
      3)

      ;;
      4)

      ;;
      5)
        exit
      ;;
      *)
        echo "Bad input!" #people who get it wrong need to be told to go away!
        ;;
    esac


done












# colors
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37
