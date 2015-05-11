#!/bin/bash

OFILEPREF=${1%%ra}
OFILESUFF=wav
OUTFILE="$OFILEPREF""OFILESUFF"
E_NOARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` [filename]"
    exit $E_NOARGS
fi

mplayer "$1" -ao pcm:file=$OUTFILE
oggenc "$OUTFILE"

rm "$OUTFILE"

exit $?

