#!/bin/bash

E_NOARGS=85
BASE=16

if [ -z "$1" ]
then
    echo "Usage: $0 number"
    exit $E_NOARGS
fi

hexcvt ()
{
    if [ -z "$1" ]
    then
        echo 0
        return
    fi

    echo ""$1" "$BASE" o p" | dc
    return
}

hexcvt "$1"

exit
