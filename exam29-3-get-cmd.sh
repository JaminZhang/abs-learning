#!/bin/bash

OPTION=cmdline

pid=$( echo $(pidof "$1") | awk '{ print $1 }' )

echo
echo "Process ID of (first instance of) "$1" = $pid"
echo -n "Command-line arguments: "
cat /proc/"$pid"/"$OPTION" | xargs -0 echo

echo;echo

