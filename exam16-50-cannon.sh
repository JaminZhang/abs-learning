#!/bin/bash

DIMENSION=10000

MAXSHOTS=1000
PMULTIPLIER=4.0

declare -r M_PI=3.141592654

get_random ()
{
    SEED=$(head -n 1 /dev/urandom | od -N 1 | awk '{ print $2 }')
    RANDOM=$SEED

    let "rnum = $RANDOM % $DIMENSION"
    echo $rnum
}

distance=

hypotenuse ()
{
distance=$(bc -l << EOF
scale = 0
sqrt ( $1 * $1 + $2 * $2 )
EOF
)
}

shots=0
splashes=0
thuds=0
Pi=0
error=0

while [ "$shots" -lt  "$MAXSHOTS" ]
do
    xCoord=$(get_random) 
    yCoord=$(get_random)
    hypotenuse $xCoord $yCoord

    ((shots++))

    printf "#%4d   " $shots
    printf "Xc = %4d  " $xCoord
    printf "Yc = %4d  " $yCoord
    printf "Distance = %5d  " $distance

    if [ "$distance" -le "$DIMENSION" ]
    then
        echo -n "SPLASH!  "
        ((splashes++))
    else
        echo -n "THUD!    "
        ((thuds++))
    fi

    Pi=$(echo "scale=9; $PMULTIPLIER*$splashes/$shots" | bc)

    echo -n "PI ~ $Pi"
    echo
done

echo
echo "After $shots shots, PI looks like approximately   $Pi"
error=$(echo "scale=9; $Pi - $M_PI" | bc)
pct_error=$(echo "scale=2; 100.0 * $error / $M_PI" | bc)
echo -n "Deviation from mathematical value of PI =        $error"
echo " ($pct_error% error)"
echo 
exit 0
