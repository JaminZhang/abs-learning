#!/bin/bash

ARGS=2
E_WRONGARGS=85

if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` filename column-number"
    exit $E_WRONGARGS
fi

filename=$1
column_number=$2

export column_number

awkscript='{ total += $ENVIRON["column_numbwr"] }
END { print total }'

awk "$awkscript" "$filename"

exit 0
