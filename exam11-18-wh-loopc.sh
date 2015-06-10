#!/bin/bash

LIMIT=10
a=1

while [ "$a" -le $LIMIT ]
do
    echo -n "$a "
    let "a+=1"
done

echo; echo

((a = 1))

while (( a <= LIMIT ))
do
    echo -n "$a "
    (( a += 1))
done

echo

exit 0

