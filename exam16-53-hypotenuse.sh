#!/bin/bash

ARGS=2
E_BADARGS=85  

if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` side_1 side_2"
    exit $E_BADARGS
fi

AWKSCRIPT=' { printf( "%3.7f\n", sqrt($1*$1 + $2*$2) ) } '

echo -n "Hypotenuse of $1 and $2 = "

echo $1 $2 | awk "$AWKSCRIPT"

exit


