#!/bin/bash

if [ $file1 -ot $file2 ]
then
    echo "File $file1 is older than $file2."
fi

if [ "$a" -eq "$b" ]
then
    echo "$a is equal to $b."
fi

if [ "$c" -eq 24 -a "$d" -eq 47 ]
then
    echo "$c equals 24 and $d equals 47."
fi

para2=${param1:-$DEFAULTVAL}
