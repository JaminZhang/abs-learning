#!/bin/bash

MAXCOUNT=25
SEED=

random_numbers ()
{
    local count=0
    local number
    while [ "$count" -lt "$MAXCOUNT" ]
    do
        number=$RANDOM
        echo -n "$number "
        let "count++"
    done
}

echo; echo

SEED=1
RANDOM=$SEED
echo "Random seed = $SEED"
random_numbers

RANDOM=$SEED
echo; echo "Again, with sam random seed ..."
echo "Random seed = $SEED"
random_numbers

echo; echo

SEED=2
RANDOM=$SEED
echo "Random seed = $SEED"
random_numbers

echo; echo


