#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
nocolor='\033[0m' # No Color

# https://ftp.gnu.org/old-gnu/Manuals/grep-2.4/html_node/grep_6.html
echo -e "${red}Printing: All sed statements"
echo
grep -r "sed -"

echo
echo -e "${green}Printing: All lines that start with the letter m"
echo
grep -r "^m"

echo
echo -e "${blue}Printing: All lines that contain three digit numbers"
grep -r -E '[0-9]+([^0-9]+[0-9]+){3}'
echo

echo
echo -e "${cyan}Printing: All echo statements with at least three words"
grep -r -Po 'echo......................'
echo

echo
echo -e "${red}Printing: All lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password)."
grep -r -E -o '[[:alnum:]]{10,100}'
echo
