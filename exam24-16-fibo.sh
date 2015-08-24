#!/bin/bash

MAXTERM=15
MINIDX=2

Fibonacci ()
{
    idx=$1
    if [ "$idx" -lt "$MINIDX" ]
    then
        echo "$idx"
    else
        (( --idx ))
        term1=$( Fibonacci $idx )

        (( --idx ))
        term2=$( Fibonacci $idx )

        echo $(( term1 + term2 ))
    fi

}

for i in $(seq 0 $MAXTERM)
do
    FIBO=$(Fibonacci $i)
    echo -n "$FIBO "
done

echo

exit 0
