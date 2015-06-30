#!/bin/bash

lines=35

for File in *
do
    search1=`head -n $lines $File | grep begin | wc -w`
    search2=`tail -n $lines $File | grep end | wc -w`

    if [ "$search1" -gt 0 ]
    then
        if [ "$search2" -gt 0 ]
        then
            echo "uudecoding - $File -"
            uudecode $File
        fi
    fi
done

exit 0
