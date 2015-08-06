#!/bin/bash

E_FILE_ACCESS=70
E_WRONG_ARGS=71

if [ ! -r "$1" ]
then
    echo "Can't read from input file!"
    echo "Usage: $0 input-file output-file"
    exit $E_FILE_ACCESS
fi

if [ -z "$2" ]
then
    echo "Need to specify output file."
    echo "Usage: $0 input-file output-file"
    exit $E_WRONG_ARGS
fi

exec 4<&0
exec < $1

exec 7>&1
exec > $2

cat - | tr a-z A-Z

exec 1>&7 7>&-
exec 0<&4 4<&-

echo "File \"$1\" written to \"$2\" as uppercase conversion."
exit 0
