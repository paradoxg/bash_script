#!/bin/bash

# run the original script
valuefromscript=$(./Ipinfo.sh)
# https://stackoverflow.com/questions/613572/capturing-multiple-line-output-into-a-bash-variable
# https://stackoverflow.com/questions/13202715/sed-get-lines-beginning-with-some-prefix
# https://askubuntu.com/questions/595269/use-sed-on-a-string-variable-rather-than-a-file

# echo the var to use in sed, the "" is for getting the ouput of the last Script in
# multiline format
total=$(echo "$valuefromscript" | sed -n '/IP Address/p')
echo "$total"
