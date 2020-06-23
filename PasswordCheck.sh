#!/bin/bash

# https://stackoverflow.com/questions/4316730/hiding-user-input-on-terminal-in-linux-script


read -s -p "Enter your password: " password
echo ""
read -p "Type a folder name where search for secret.txt: " foldername

# check if file exist
if [ -f $foldername/secret.txt ]; then
  # cat the file and save the old pass in old_pass var
  old_pass=$(cat $foldername/secret.txt)

  if [ $old_pass == $password ]; then  #if new and old pass match
    echo "Access Granted"
    exit 0
  else
    echo "Access Denied”"
    exit 1
  fi
else
  echo "Cant open $foldername/secret.txt"
  exit 1
fi
