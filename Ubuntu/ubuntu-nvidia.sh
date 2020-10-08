#!/bin/bash
function linuxmint() {
    echo ""
    echo "Please use the Driver Manager provided in Linux Mint instead for this purpose."
    echo ""
    exit
}
function ubuntu() {
    ubuntu-drivers devices
    echo "Please take note of the driver that will be installed on the system. The installation will begin in 30 seconds."
    sleep 30
    sudo ubuntu-drivers autoinstall 
    exit
}
menu() {
echo -ne "
Are you using Linux Mint?
$('1)') Yes
$('2)') No
$('Please pick an option') "
        read option
        case $option in
            1) linuxmint ; menu ;;
            2) ubuntu ; menu ;;
        *) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}
menu