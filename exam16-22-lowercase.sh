#!/bin/bash

for filename in *
do
    fname=`basename $filename`
    n=`echo $fname | tr A-Z a-z`
    if [ "$fname" != "$n" ]
    then
        mv $fname $n
    fi
done

exit $?


for filename in *
do
    n=`echo "$filename/" | tr '[:upper:]' '[:lower:]'`
    n=${n%/}
    [[ $filename == $n ]] || mv "$filename" "$n"
done

exit $?
