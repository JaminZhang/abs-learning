#!/bin/bash

E_OPTERR=65

if [ "$#" -eq 0 ]
then
    echo "Usage $0 -[options a,b,c]"
    exit $E_OPTERR
fi

set -- `getopt "abcd:" "$@"`

while [ ! -z "$1" ]
do
    case "$1" in
        -a) echo "Option \"a\"";;
        -b) echo "Option \"b\"";;
        -c) echo "Option \"c\"";;
        -d) echo "Option \"d\"";;
         *) break;;
     esac

     shift
 done

 exit 0
