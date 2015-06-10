#!/bin/bash

EXPECTED_ARGS=2
E_BADARGS=85
MODEM_PORT="/dev/ttyS2"

if [ $# -ne $EXPECTED_ARGS ]
then
    echo "Usage: `basename $0` phone # text-file"
    exit $E_BADARGS
fi

if [ ! -f "$2" ]
then
    echo "File $2 is not a text file."
    exit $E_BADARGS
fi

fax make $2

for file in $(ls $2.0*)
do
    fi1="$fil1 $file"
done

efax -d "$MODEM_PORT" -t "T$1 $fi1

exit $?
