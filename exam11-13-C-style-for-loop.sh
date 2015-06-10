#!/bin/bash

echo

for a in 1 2 3 4 5 6 7 8 9 10
do
    echo -n "$a "
done

echo; echo

for a in `seq 10`
do
    echo -n "$a "
done

echo; echo

for a in {1..10}
do
    echo -n "$a "
done

echo; echo

LIMIT=10

for ((a=1; a <= LIMIT ; a++))
do
    echo -n "$a "
done

echo; echo

for ((a=1, b=1; a <=LIMIT ; a++, b++))
do
    echo -n "$a-$b "
done

echo; echo

exit 0
