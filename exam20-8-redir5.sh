#!/bin/bash

if [ -z "$1" ]
then
    Filename=names.data
else
    Filename=$1
fi

line_count=`wc $Filename | awk '{ print $1 }'`

for name in `seq $line_count`
do
    read name 
    echo $name
    if [ "$name" = Smith ]
    then
        break
    fi
done <"$Filename"

exit 0
