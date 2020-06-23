#!/bin/bash

# https://stackoverflow.com/questions/4316730/hiding-user-input-on-terminal-in-linux-script



./passwordCheck.sh
# https://bencane.com/2014/09/02/understanding-exit-codes-and-how-to-use-them-in-bash-scripts/
#echo $?
if [ $? -eq 0 ];then
  echo "1. Create a folder"
  echo "2. Copy a folder"
  echo "3. Set a password"
fi
