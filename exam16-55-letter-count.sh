#!/bin/bash

MINARGS=2
E_BADARGS=65
FILE=$1

let LETTERS=$#-1

show_help() {
    echo
    echo Usage:`basename $0` file letters
    echo Note: `basename $0` arguments are case sensitive.
    echo Example: `basename $0` foobar.txt G n U L i N U x.
    echo
}

if [ $# -lt $MINARGS ]; then
    echo
    echo "Not enough arguments."
    echo
    show_help
    exit $E_BADARGS
fi

if [ ! -f $FILE ]; then
    echo "File \"$FILE\" does not exist."
    exit $E_BADARGS
fi

for n in `seq $LETTERS`; do
    shift
    if [[ `echo -n "$1" | wc -c` -eq 1 ]]; then
        echo "$1" -\> `cat $FILE | tr -cd  "$1" | wc -c`
    else
        echo "$1 is not a  single char."
    fi
done

exit $?
