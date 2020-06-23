#!/bin/bash


# the-7-best-cyber-security-websites
# https://securityscorecard.com/blog/the-7-best-cyber-security-websites
site="thehackernews.com"

echo "Starting analysis on $site"
echo ""

echo "####################    PING INFO   #################################"
echo ""
# check if host is respondig ping
if ping -c 2 $site &> /dev/null
		then
      # from the ping, get only the ip
      # https://unix.stackexchange.com/questions/307895/pulling-ip-address-from-ping-command-with-sed
		  ip_site=$(ping -c 1 $site | sed -nE 's/^PING[^(]+\(([^)]+)\).*/\1/p')
      echo "Site is on, with ip: $ip_site"
		else
		  echo "Site is offline, or check your internet conection"
      exit
fi

echo ""
echo "####################    WHOIS INFO   #################################"
echo ""
# check if whois exist, and if exist
# run a  whois of the site, and store all info in a file
# then after that, analyse the file to get specific info
if [ -f /usr/bin/whois ]; then
  echo "Performing Whois of $site, please wait"
  # save the info of whois in a file
  whois $site > whois-$site.txt
  # this is a better way because it can save all data and not
  # need to do multiple whois to get more info (also avoids being blocked by the whois server request)

  # grep to find only this word | head to only print 1 line (can exist multiple lines with same var)
  # its possible to add more lines, simply by opening the file and searching the keywords inside
  grep "Creation Date" whois-$site.txt | head -1
  grep "Registrant Email" whois-$site.txt | head -1
  grep "Admin Email" whois-$site.txt | head -1
  grep "Registry Expiry Date" whois-$site.txt | head -1
  grep "Name Server" whois-$site.txt | head -2

  echo ""
  echo "File with whois info created: whois-$site.txt"
  echo "To get more info, please check whois-$site.txt"
else
  echo "Cant run a whois of $site"
fi

# do a grep over the same file generated on whois

echo ""
echo "####################    WGET/HTML INFO   #################################"
echo ""
echo "Extracting info from index.html of the site"
# https://linuxize.com/post/wget-command-examples/
# download all mainpage to a file
if [ -f /usr/bin/wget ]; then
  wget -q -O web-$site.txt $site
  # this if, like the previous, exists if a file exist
  if [ -f web-$site.txt ]; then
    echo "Title info"
    grep "<title>" web-$site.txt
    echo "Charset info"
    grep "meta charset" web-$site.txt
    echo "Links:"
    grep "<link href='http" web-$site.txt | head -5

    echo ""
    echo "File with html info created: web-$site.txt"
    echo "To get more info, please check web-$site.txt"

  else
    echo "Cant open  whois-$site.txt"
  fi
else
  echo "Cant perfom wget $site. please check if installed"
fi

echo ""
echo "####################    NMAP   #################################"
echo ""
if [ -f /usr/bin/nmap  ]; then
  nmap $site > nmap-$site.txt
  # this if, like the previous, exists if a file exist
  if [ -f nmap-$site.txt ]; then
    echo "Open Ports"
    grep "open" nmap-$site.txt

    echo ""
    echo "File with nmap info created: nmap-$site.txt"
    echo "To get more info, please check nmap-$site.txt"

  else
    echo "Cant open  nmap-$site.txt"
  fi
else
  echo "Cant perfom nmap on $site. please check if installed"
fi





# 2> /dev/null hide the output of rm in case the file doesn't exist
# https://stackoverflow.com/questions/10247472/how-to-prevent-rm-from-reporting-that-a-file-was-not-found
#rm web-$site.txt 2> /dev/null
#rm whois-$site.txt 2> /dev/null
#rm nmap-$site.txt 2> /dev/null
echo ""
echo "####################    EXIT SCRIPT   #################################"
echo ""
