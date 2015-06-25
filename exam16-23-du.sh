#!/bin/bash

E_WRONGARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` filename-to-convert"
    exit $E_WRONGARGS
fi

NEWFILENAME=$1.unx

CR='\015'

tr -d $CR < $1 > $NEWFILENAME

echo "Original DOS text file is \"$1\"."
echo "Converted UNINX text file is \"$NEWFILENAME\"."

exit 0
