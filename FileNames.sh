#!/bin/bash
# https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash
# https://stackoverflow.com/questions/4665051/check-if-passed-argument-is-file-or-directory-in-bash

while IFS="" read -r line; do
  if [[ -d $line ]]; then
    echo "$line : That’s a directory"
  elif [[ -f $line ]]; then
      echo "$line : That file exists"
  else
      echo "I don’t know what that is!: $line"
  fi
done < filenames.txt
