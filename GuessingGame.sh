#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
nocolor='\033[0m' # No Color
# to check if var is number
re='^[0-9]+$'
getNumber () {
  if [[ $1 -lt 42 ]]; then
    echo -e "${cyan}MMMM Too Low${nocolor}"
  elif [[ $1 -gt 42 ]];then
    echo -e "${red}MMMM Too High${nocolor}"
  else
    echo -e "${cyan}I Have An Answer For You, But You're Not Gonna Like it"
    sleep 3
    echo -e "${cyan}Alright"
    sleep 1
    echo -e "${cyan}The Answer To The Ultimate Question Of Life, The Universe And Everything Is "
    sleep 6
    echo -e "${cyan}42"
    sleep 5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo ""
    sleep .5
    echo -e "${RED}WHAT?"
    sleep 4
    clear
    exit
  fi
}

echo -e "${nocolor}"



clear
echo -e "${cyan}Welcome to the Script That Will Answer The Definitve Question"
echo -e "${purple}The Answer to the Ultimate Question of Life, the Universe, and Everything"
sleep 1
clear

echo -e "${blue}Welcome to the Script That Will Answer The Definitve Question"
echo -e "${green}The Answer to the Ultimate Question of Life, the Universe, and Everything"
sleep 1
clear

echo -e "${red}Welcome to the Script That Will Answer The Definitve Question"
echo -e "${purple}The Answer to the Ultimate Question of Life, the Universe, and Everything"
sleep 1
clear

echo -e "${cyan}Welcome to the Script That Will Answer The Definitve Question"
echo -e "${green}The Answer to the Ultimate Question of Life, the Universe, and Everything"
sleep 1
clear

echo -e "${blue}Welcome to the Script That Will Answer The Definitve Question"
echo -e "${blue}The Answer to the Ultimate Question of Life, the Universe, and Everything"
sleep 1
echo "Processing......"

echo -e "${blue}I Dont Remember The Answer, Can You Help me?"
echo -e "${blue}Its a Number between 0 and 100.-.-.-.--."

echo -e "${nocolor}"

while :
do
    read -p "Enter your guess number: " number
    if [[ $number =~ $re ]]; then
      getNumber number
    else
      echo -e "${red}Please Don't Panic, That Is Not a Number${nocolor}"
    fi
done
