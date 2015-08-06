#!/bin/bash

LOGFILE=logfile.txt

exec 6>&1

exec > $LOGFILE

echo -n "Logfile: "
date
echo "-------------------------------------"
echo


echo "Output of \"ls -al\" command"
echo
ls -al
echo "Output of \"df\" command"
echo
df

exec 1>&6 6>&- 

echo
echo "== stdout now restored to default == "
echo
ls -al
echo

exit 0
