#!/bin/bash

E_BADARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` filename"
    exit $E_BADARGS
else
    file=$1
fi

[ ! -f "$file" ] && echo "File \"$file\" not found. \
Cowardly refusing to delete a nonexistent file."

[ ! -f "$file" ] || (rm -f $file; echo "File \"$file\" deleted.")

exit $?
