#!/bin/bash

END_CONDITION=end

until [ "$var1" = "$END_CONDITION" ]
do
    echo "Input variable #1 "
    echo "($END_CONDITION to exit)"
    read var1
    echo "variable #1 = $var1"
    echo
done

LIMIT=10
var=0

until (( var > LIMIT ))
do
    echo -n "$var "
    (( var++ ))
done

exit 0
