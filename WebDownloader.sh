# https://stackoverflow.com/questions/4316730/hiding-user-input-on-terminal-in-linux-script


status="False"

while :
do

  #echo "Type a website URL to download"
  read -p "Type a website URL to download or 'exit' to quit: " url

  if [ $url != "exit" ]; then  #if new and old pass match
    read -p "Type a download location: " foldername
    echo ""
    cd $foldername
    mkdir -p $foldername
    wget -q -O $url.txt $url
    echo "File created: $foldername/$url.html"
  else
    exit
  fi

done
