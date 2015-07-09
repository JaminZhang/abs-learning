#!/bin/bash

NOPROCESS=2

process=xxxyyyzzz

t=`pidof $process`

if [ -z "$t" ]
then
    echo "Process $process was not running."
    echo "Nothing killed."
    exit $NOPROCESS
fi

kill $t

exit 0
