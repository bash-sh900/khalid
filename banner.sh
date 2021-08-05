#!/bin/bash
dist=$1
function logo(){
	python logo.py
	printf '\e[32m\n'
	read -p "enter your name > " name
}
function install(){
	#color
	clear
	red="\e[1;31m"
	gren="\e[1;32m"
	yellow="\e[1;33m"
	cyan="\e[1;36m"
	echo -e "$red[$gren*$red]$cyan starts install :)"
	sleep 3
	echo -e "$red[$gren*$red]$cyan plasw wait :)"
	which figlet >/dev/null #starts check the pkg founds
	if [ $? -eq 0 ];
	then
		sleep 1
	else
		pkg install figlet -y >/dev/null
	fi
	which ruby >/dev/null
	if [ $? -eq 0 ];
	then
		sleep 1
	else
		pkg install ruby -y >/dev/null
		gem install lolcat >/dev/null
	fi
	which cowsay >/dev/null
	if [ $? -eq 0 ];
	then
		sleep 1
	else
		pkg install cowsay -y >/dev/null
	fi
	cd ~
	if [ -f .bashrc ];
	then
		cd CodeBlack;mkdir data
		cd ~;mv .bashrc ~/CodeBlack/data
		cd CodeBlack
		clear
		logo
		printf "clear\ncowsay -f eyes 'CodeBlack'|lolcat\nfiglet $name|lolcat" >.bashrc
		mv .bashrc ~>/dev/null
		figlet Done|lolcat
	else
		clear
		cd CodeBlack
		logo
		printf "clear\ncowsay -f eyes 'CodeBlack'|lolcat\nfiglet $name|lolcat" >.bashrc
		mv .bashrc ~>/dev/null
		figlet Done|lolcat
	fi
}
function uninstall(){
	cd ~;rm .bashrc
	cd CodeBlack
	if [ -d data];
	then
		cd data;mv .bashrc ~;cd ~;rm -r CodeBlack >/dev/null
		clear
		figlet Done|lolcat
	else
		sleep 1
	fi
}
function remove(){
	cd ~;rm .bashrc;cd CodeBlack
	if [ -d data ];
	then
		cd data;mv .bashrc ~
		clear
		figlet Done|lolcat
	else
		sleep 1
	fi
}
case $dist in
	"-i")install;;
	"-u")uninstall;;
	"-r")remove;;
	"-o")xdg-open https://github.com/bash-sh900;;
	   *)cat << EOF
Usage:banner[-i install] [ -u uninstall]
	    [ -r remove] [ -o github]
EOF
esac


