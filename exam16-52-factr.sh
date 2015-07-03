#!/bin/bash

MIN=2
E_NOARGS=85
E_TOOSMALL=86

if [ -z $1 ]
then
    echo "Usage: $0 number"
    exit $E_NOARGS
fi

if [ "$1" -lt "$MIN" ]
then
    echo "Number to factor must be $MIN or greater."
    exit $E_TOOSMALL
fi

echo "Factors of $1:"

echo  "$1[p]s2[lip/dli%0=1dvsr]s12sid2%0=13sidvsr[dli%0=\
1lrli2+dsi!>.]ds.xd1<2" | dc

exit
