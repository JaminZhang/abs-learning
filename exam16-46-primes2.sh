#!/bin/bash

CEILING=10000
PRIME=0
E_NOTPRIME=

is_prime ()
{
    local factors
    factors=( $(factor $1) )
if [ -z "${factors[2]}" ]
then
    return $PRIME
else
    return $E_NOTPRIME
fi
}

echo
for n in $(seq $CEILING)
do
    if is_prime $n
    then
        printf %5d $n
    fi
done

echo

exit
