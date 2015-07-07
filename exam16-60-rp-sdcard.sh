#!/bin/bash


DEFAULTbs=4M
DEFAULTif="2013-07-26-wheezy-raspbian.img" 
DEFAULTsdcard="/dev/mmcblk0"
ROOTUSER_NAME=root
E_NOTROOT=81
E_NOIMAGE=82

username=$(id -nu)
if [ "$username" != "$ROOTUSER_NAME" ]
then
    echo "This script must run as root or with root privileges."
    exit $E_NOTROOT
fi

if [ -n "$1" ]
then
    imagefile="$1"
else
    imagefile="$DEFAULTif"
fi

if [ -n "$2" ]
then
    sdcard="$2"
else
    sdcard="$DEFAULTsdcard"
fi

if [ ! -e $imagefile ]
then
    echo "Image file \"$imagefile\" not found!"
    exit $E_NOIMAGE
fi

echo "Last chance to change your mind!"; echo
read -s -n1 -p "Hit a key to write $imagefile to $sdcard [Ctl-c to exit]."
echo; echo

echo "Writing $imagefile to $sdcard ..."
dd bs=$DEFAULTbs if=$imagefile of=$sdcard

echo $?
