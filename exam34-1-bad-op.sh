#!/bin/bash

echo
number=1

while [ "$number" < 5 ]
do
    echo -n "$number "
    let "number += 1"
done

echo "---------------------"

while [ "$number" \< 5 ]
do
    echo -n "$number "
    let "number += 1"
done

echo; echo "---------------------"

lesser=5
greater=105

if [ "$greater" \< "$lesser" ]
then
    echo "$greater is less than $lesser"
fi

echo

exit 0
