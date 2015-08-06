#!/bin/bash

if [ -z "$1" ]
then
    Filename=names.data 
else
    Filename=$1
fi

exec 3<&0 
exec 0<"$Filename"   

count=0
echo

while [ "$name" != Smith ]
do
    read name 
    echo $name
    let "count += 1"
done

exec 0<&3 
exec 3<&-

echo; echo "$count names read"; echo

exit 0
