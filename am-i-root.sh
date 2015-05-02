#!/bin/bash

ROOT_UID=0
if [ "$UID" -eq "$ROOT_UID" ]
then
    echo "You are root."
else
    echo "You ar just an ordinary user ( but mom loves you just the same)."
fi

#exit 0

ROOTUSER_NAME=root

username=`id -nu`
if [ "$username" = "$ROOTUSER_NAME" ]
then
    echo "Rooty, toot, toot. You are root."
else
    echo "You are just a regular fella."
fi
