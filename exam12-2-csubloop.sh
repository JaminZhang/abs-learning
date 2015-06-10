#!/bin/bash

variable1=`for i in 1 2 3 4 5
do
    echo -n "$i"
done`

echo "variable1 = $variable1"

i=0
variable2=`while [ "$i" -lt 10 ]
do
    echo -n "$i"
    let "i += 1"
done`

echo "variable2 = $variable2"

exit 0
