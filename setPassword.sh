#!/bin/bash

# https://stackoverflow.com/questions/4316730/hiding-user-input-on-terminal-in-linux-script

read -p "Type a folder name: " foldername
read -s -p "Enter your password: " password
echo ""

mkdir -p $foldername
echo $password > $foldername/secret.txt
