#!/bin/bash

echo

for a in `seq 80`
do
    echo -n "$a "
done

echo; echo

COUNT=80

for a in `seq $COUNT`
do
    echo -n "$a "
done

echo; echo

BEGIN=75
END=80

for a in `seq $BEGIN $END`
do
    echo -n "$a "
done

echo; echo

BEGIN=45
INTERVAL=5
END=80

for a in `seq $BEGIN $INTERVAL $END`
do
    echo -n "$a "
done

echo; echo

exit 0
