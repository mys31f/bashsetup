#!/bin/bash
function install1() {
    echo ""\
    sudo pacman -S --noconfirm nvidia
        if  [ $? != 0 ]; then
            echo "Something might have gone wrong, please check your hardware"
            exit
        fi 
    echo "The PC will restart in 30 seconds for the drivers to apply. Please wait."
    sleep 30
    reboot
	echo ""
    exit
}
function install2() {
    echo ""
	sudo pacman -S --nonconfirm nvidia-lts
    echo "The PC will restart in 30 seconds for the drivers to apply. Please wait."
    sleep 30
    reboot
    echo ""
    exit
}
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
ColorGreen(){
	echo -ne $green$1$clear
}
ColorBlue(){
	echo -ne $blue$1$clear
}
menu(){
echo -ne "
Are you using the linux or the linux-lts kernel?
$(ColorGreen '1)') linux
$(ColorGreen '2)') linux-lts
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
	        1) install1 ; menu ;;
	        2) install2 ; menu ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

menu