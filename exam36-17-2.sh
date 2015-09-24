#!/bin/bash

SUCCESS=0
E_BADINPUT=85

test "$1" -ne 0 -o "$1" -eq 0 2>/dev/null

if [ $? -ne "$SUCCESS" ]
then
    echo "Usage: `basename $0` integer-input"
    exit $E_BADINPUT
fi

let "sum = $1 + 25"
echo "Sum = $sum"

exit 0
