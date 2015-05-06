#!/bin/bash

RANDOM=$$

PIPS=6
MAXTHROWS=6
throw=0

ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0

print_result ()
{
    echo
    echo "ones = $ones"
    echo "twos = $twos"
    echo "threes = $threes"
    echo "fours = $fours"
    echo "fives = $fives"
    echo "sixes = $sixes"
    echo
}

update_count ()
{
case "$1" in
    0) ((ones++));;
    1) ((twos++));;
    2) ((threes++));;
    3) ((fours++));;
    4) ((fives++));;
    5) ((sixes++));;
esac
}

echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
    let "die1 = RANDOM % $PIPS"
    update_count $die1
    let "throw += 1"
done

print_result

exit $?
