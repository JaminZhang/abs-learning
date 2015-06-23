#!/bin/bash

E_BADARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` pattern"
    exit $E_BADARGS
fi

echo

for file in *
do
    output=$(sed -n /"$1"/p $file)

    if [ ! -z "$output" ]
    then
        echo -n "$file: "
        echo "$output"
    fi

    echo
done

echo

exit 0
