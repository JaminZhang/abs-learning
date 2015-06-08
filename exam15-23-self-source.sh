#!/bin/bash

MAXPASSCNT=100

echo -n "$pass_count "

let "pass_count += 1"

while [ "$pass_count" -le $MAXPASSCNT ]
do
    . $0
done

echo

exit 0
