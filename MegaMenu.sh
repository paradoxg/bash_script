#!/bin/bash

# https://stackoverflow.com/questions/4316730/hiding-user-input-on-terminal-in-linux-script
red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
nocolor='\033[0m' # No Color

reply="hi"

while :
do
  if [ $reply != "exit" ]; then  #if new and old pass match
    ./passwordCheck.sh
    if [ $? -eq 0 ];then

      printf "${green}1. Create a folder\n"
      printf "${purple}2. Copy a folder\n"
      printf "${cyan}3. Set a password\n${nocolor}"

      read -p "Type any key or 'exit' to quit: " reply

    fi

  else
    exit
  fi

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
