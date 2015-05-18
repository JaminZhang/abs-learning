#!/bin/bash

LIMIT=19

echo
echo "Printing Number 1 through 20 (but not 3 and 11)."

a=0

while [ $a -le "$LIMIT" ]
do
    a=$((a+1))

    if [ "$a" -eq 3 ] || [ "$a" -eq 11 ]
    then
        continue
    fi

    echo -n "$a "
done

echo; echo

a=0

while [ "$a" -lt "$LIMIT" ]
do
    a=$((a+1))

    if [ "$a" -gt 2 ]
    then
        break
    fi

    echo -n "$a "
done

echo; echo; echo

exit 0
