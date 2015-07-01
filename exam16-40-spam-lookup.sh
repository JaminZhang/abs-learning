#!/bin/bash

ARGCOUNT=1
E_WRONGARGS=85
if [ $# -ne "$ARGCOUNT" ]
then
    echo "Usage: `basename $0` domain-name"
    exit $E_WRONGARGS
fi

dig +short $1.contacts.abuse.net -c in -t txt

exit $?
