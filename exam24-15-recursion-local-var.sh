#!/bin/bash

MAX_ARG=5
E_WRONG_ARGS=85
E_RANGE_ERR=86

if [ -z "$1" ]
then
    echo "Usage: `basename $0` number"
    exit $E_WRONG_ARGS
fi

if [ "$1" -gt $MAX_ARG ]
then
    echo "Out of range ($MAX_ARG is maximum)."
    exit $E_RANGE_ERR
fi

fact ()
{
    local number=$1
    if [ "$number" -eq 0 ]
    then
        factorial=1
    else
        let "decrnum = number - 1"
        fact $decrnum
        let "factorial = $number * $?"
    fi

    return $factorial
}

fact $1
echo "Factorial of $1 is $?."

exit 0
