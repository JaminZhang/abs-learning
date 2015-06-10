#!/bin/bash

for outerloop in 1 2 3 4 5 
do
    echo -n "Group $outerloop: "

    for innerloop in 1 2 3 4 5
    do
        echo -n "$innerloop "
        if [ "$innerloop" -eq 3 ]
        then
            break 2
        fi
    done

    echo
done

echo

exit 0

