#!/bin/bash

LOWER_LIMIT=1
UPPER_LIMIT=1000

PRIME=1
NON_PRIME=0

let SPLIT=UPPER_LIMIT/2

declare -a Primes

initialize ()
{

i=$LOWER_LIMIT
until [ "$i" -gt "$UPPER_LIMIT" ]
do
    Primes[i]=$PRIME
    let "i += 1"
done
}
print_primes ()
{
    i=$LOWER_LIMIT

    until [ "$i" -gt "$UPPER_LIMIT" ]
    do
        if [ "${Primes[i]}" -eq "$PRIME" ]
        then
            printf "%8d" $i
        fi

        let "i += 1"

    done
}

sift ()
{
    let i=$LOWER_LIMIT+1

    until [ "$i" -gt "$UPPER_LIMIT" ]
    do
        if [ "${Primes[i]}" -eq "$PRIME" ]
        then
            t=$i

            while [ "$t" -le "$UPPER_LIMIT" ]
            do
                let "t += $i "
                Primes[t]=$NON_PRIME
            done
        fi

        let "i += 1"
    done
}

initialize
sift
print_primes

echo

exit 0
