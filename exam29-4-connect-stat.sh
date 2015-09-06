#!/bin/bash

PROCNAME=pppd
PROCFILENAME=status
NOTCONNECTED=85
INTERVAL=2

pidno=$( ps ax | grep -v "ps ax" | grep -v grep | grep $PROCNAME |
awk '{ print $1 }' )

if [ -z "$pidno" ]
then
    echo "Not connected."
else
    echo "Connected."; echo
fi

while [ true ]
do

    if [ ! -e "/proc/$pidno/$PROCFILENAME" ]
    then
        echo "Disconnected."
    fi

    netstat -s | grep "packets received"
    netstat -s | grep "packets delivered"

    sleep $INTERVAL
    echo; echo

done

exit 0
