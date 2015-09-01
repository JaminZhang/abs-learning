#!/bin/bash

UPPER_LIMIT=${1:?"Need an upper limit of primes to search."}

Primes=( '' $(seq ${UPPER_LIMIT}) )

typeset -i i t

Primes[i=1]=''

until (( ( i += 1 ) > (${UPPER_LIMIT}/i) ))
do
    if ((${Primes[t=i*(i-1), i]}))
    then
        until (( ( t += i ) > ${UPPER_LIMIT} ))
        do
            Primes[t]=; 
        done
    fi
done

echo
printf "%8d" ${Primes[*]}
echo; echo

exit $?
