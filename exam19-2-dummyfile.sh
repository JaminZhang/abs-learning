#!/bin/bash

E_BADARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` filename"
    exit $E_BADARGS
fi

TARGETFILE=$1

/bin/vi $TARGETFILE <<x23LimitStringx23
i
This is line 1 of the example file.
This is line 2 of the example file.
^[
ZZ
x23LimitStringx23

exit
