#!/bin/bash

E_NOARGS=86
E_BADARG=87
MINLEN=7

if [ -z "$1" ]
then
    echo "Usage $0 LETTERSET"
    exit $E_NOARGS
elif [ ${#1} -lt $MINLEN ]
then
    echo "Argument must have at least $MINLEN letters."
    exit $E_BADARG
fi

FILTER='.......'
Anagrams=( $(echo $(anagram $1 | grep $FILTER)))

echo
echo "${#Anagrams[*]} 7+ letter anangrams found"
echo
echo ${Anagrams[0]}
echo ${Anagrams[1]}
echo ${Anagrams[*]}

exit $?
