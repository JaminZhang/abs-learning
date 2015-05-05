#!/bin/bash

PASSES=500
ROWS=10
RANGE=3
POS=0
RANDOM=$$

declare -a Slots
NUMSLOTS=21

Initialize_Slots () {
for i in $( seq $NUMSLOTS )
do
    Slots[$i]=0
done

echo
}

Show_Slots () {
echo; echo
echo -n " "
for i in $( seq $NUMSLOTS )
do
    printf "%3d" ${Slots[$i]}
done

echo
echo " |__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|"
echo "                                ||"
echo
}

Move () {
    Move=$RANDOM
    let "Move %= $RANGE"
    case "$Move" in
        0 ) ;;
        1 ) ((POS--));;
        2 ) ((POS++));;
        * ) echo -n "Error ";;
    esac
}

Play () {
i=0
while [ "$i" -lt "$ROWS" ]
do
    Move
    ((i++));
done

SHIFT=11
let "POS += $SHIFT"
(( Slots[$POS]++ ))

}

Run () {
p=0
while [ "$p" -lt "$PASSES" ]
do
    Play
    (( p++ ))
    POS=0
done
}

# --------------
# main ()
Initialize_Slots
Run
Show_Slots
# --------------

exit $?
