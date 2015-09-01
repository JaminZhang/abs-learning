#!/bin/bash

LIMIT=100
LINEWIDTH=20

Q[1]=1
Q[2]=1

echo
echo "Q-series [$LIMIT terms]:"
echo -n "${Q[1]} "
echo -n "${Q[2]} "

for ((n=3; n <= $LIMIT; n++))
do
    let "n1 = $n - 1"
    let "n2 = $n - 2" 

    t0=`expr $n - ${Q[n1]}`
    t1=`expr $n - ${Q[n2]}`

    T0=${Q[t0]} 
    T1=${Q[t1]}

    Q[n]=`expr $T0 + $T1`
    echo -n "${Q[n]} "

    if [ `expr $n % $LINEWIDTH` -eq 0 ]
    then
        echo
    fi

done

echo 

exit 0
