#!/bin/bash

if [ -z "$1" ]
then
    Filename=names.data
else
    Filename=$1
fi

TRUE=1

if [ "$TRUE" ] 
then
    read name
    echo $name
fi <"$Filename"

exit 0
