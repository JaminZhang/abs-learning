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

awk '

{ total += $'"${column_number}"'
}
END {
    print total
}

' "$filename"

exit 0
