#!/bin/bash

if [ -z "$1" ]
then
    Filename=names.data
else
    Filename=$1
fi

until [ "$name" = Smith ]
do
    read name
    echo $name
done <"$Filename"

exit 0
