#!/bin/bash
secret='shhh' #Don't tell anyone!
read -s -p "What's the secret code?: " REPLY
echo
#if the user types in the correct secret, tell them they got it right!
if [ "$secret" = $REPLY ]; then
  echo "You got it right!"
  correct="true"
else echo "You got it wrong :("
  correct="false"
fi


case $correct in
  "true")
    echo "you have unlocked the secret menu!"
    #TODO: add a secret menu for people in the know.
    echo 
    echo "Super Secret Menu"
    echo
    echo "1. Hack Facebook"
    echo "2. Create 100 bitcoins"
    echo "3. Achieve World Peace...in construccion"
    ;;
  *)
    echo "Go Away!" #people who get it wrong need to be told to go away!
    ;;
esac
