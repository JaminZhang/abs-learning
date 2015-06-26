#!/bin/bash

E_WRONGARGS=85

if [ -z "$1" ]
then
    echo "Usage: `basename $0` filename"
    exit $E_WRONGARGS
fi

groff -Tascii -man $1 | less

exit $?
