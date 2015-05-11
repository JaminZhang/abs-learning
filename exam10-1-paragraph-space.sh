#!/bin/bash

MINLEN=60

while read line
do
    echo "$line"

    len=${#line}
    if [[ "$len" -lt "$MINLEN" && "$line" =~ [*{\.}]$ ]]
    then echo
    fi
done

exit
