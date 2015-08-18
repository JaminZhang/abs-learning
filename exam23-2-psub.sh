#!/bin/bash

declare -a array0
while read
do
    array0[${#array0[@]}]="$REPLY"
done < <( sed -e 's/bash/CRASH-BANG!/' $0 | grep bin | awk '{print $1}' )

echo "${array0[@]}"

exit $?
