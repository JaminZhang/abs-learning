#!/bin/bash

line=''
echo "\$line = "$line""

echo

shopt -s lastpipe

echo "Exit status of attempting to set \"lastpipe\" option is $?"

echo

head -1 $0 | read line 


echo "\$line = "$line""
