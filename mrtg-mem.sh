#!/bin/bash

if [[ $USER != 'root' ]]; then
	echo "Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi

MYIP=$(wget -qO- ipv4.icanhazip.com)

#vps="zvur";
vps="aneka";


	source="https://raw.githubusercontent.com/elangoverdosis/deeniedoank"


# go to root
cd

# check registered ip
wget -q -O IP $source/debian7/IP.txt
if ! grep -w -q $MYIP IP; then
	echo "Maaf, hanya IP yang terdaftar yang bisa menggunakan script ini!"
	if [[ $vps = "zvur" ]]; then
		echo "Hubungi: Yusuf ardiansyah atau Elang overdosis"
	else
		echo "Hubungi: Yusuf ardiansyah atau Elang overdosis"
	fi
	rm -f /root/IP
	exit
fi

FREE=`free -m | grep "buffers/cache" | awk '{print $3}'`
SWAP=`free -m | grep "Swap" | awk '{print $3}'`
UP=`uptime`

echo $FREE
echo $SWAP
echo $UP
echo "----------------------------------------------------------------" 


	echo " Edited by Elang overdosis and Yusuf ardiansyah"


	echo " TEAM HACKER "
echo "----------------------------------------------------------------" 

cd ~/
rm -f /root/IP
