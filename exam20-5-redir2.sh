#!/bin/bash

if [ -z "$1" ]
then
    Filename=names.data
else
    Filename=$1
fi

count=0

echo

while [ "$name" != Smith ]
do
    read name
    echo $name
    let "count += 1"
done <"$Filename"

echo; echo "$count names read"; echo

exit 0
