#!/bin/bash

E_BADARGS=85
MAXCONTEXTLINES=50
DEFAULT_DICTFILE="/usr/share/dict/webster1913-dict.txt"

if [[ -z $(echo "$1" | sed -n '/^[A-Z]/p') ]]
then
    echo "Usage: `basename $0` Word-to-define [dictionary-file]"
    echo
    echo "Note: Word to look up must start with captial letter,"
    echo "with the rest of the word in lowercase."
    echo "--------------------------------------------"
    echo "Examples: Abandon, Dictionary, Marking, etc."
    exit $E_BADARGS
fi

if [ -z "$2" ]
then
    dictfile=$DEFAULT_DICTFILE
else
    dictfile="$2"
fi

Definition=$(fgrep -A $MAXCONTEXTLINES "$1 \\" "$dictfile")

echo "$Definition" |
sed -n '1,/^[A-Z]/p' |
sed '$d' | sed '$d'

exit $?
