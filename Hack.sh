#!/bin/bash
echo -en "\e[32m"
for((i=0;i<101;i++))
do
	clear
	echo -en "Accessing the DataBase $i% complete...\n["
	for((j=i;j;j--))
	do
		echo -n █
	done
	for((j=100-i;j;j--))
	do
		echo -n ' '
	done
	echo ]
	sleep 0.1
done
echo "Accessed the DataBase successfully!"
sleep 2
for((i=0;i<101;i++))
do
	clear
	echo -en "Accessing the DataBase 100% complete...\n[████████████████████████████████████████████████████████████████████████████████████████████████████]\nAccessed the DataBase successfully!\n\nCracking the code $i% complete...\n["
	for((j=i;j;j--))
	do
		echo -n █
	done
	for((j=100-i;j;j--))
	do
		echo -n ' '
	done
	echo ]
	sleep 0.1
done
echo "Cracked the code successfully!"
sleep 0.5
echo -e "\nGranting access..."
sleep 2
echo "Access fully granted!"
sleep 2
case $1 in
'')echo -en "\nThe device";;
*)echo -en "\n$1";;
esac
echo -n " has been hacked successfully!"
xterm -T "Receiving Data" -n "Receiving Data" -e "echo -en \"\e[0;32m\";while true;do shuf -zi 0-1 -n 1;done"
