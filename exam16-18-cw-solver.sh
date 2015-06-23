#!/bin/bash

E_NOPATT=71
DICT=/usr/share/dict/word.lst

if [ -z "$1" ]
then
    echo
    echo "Usage:"
    echo
    echo ""$0" \"pattern,\""
    echo "where \"pattern\" is in the form"
    echo "xxx.x.x..."
    echo
    echo "The x's represent known letters,"
    echo "and the periods are unknown letters (blanks)."
    echo "Letters and periods can be in any position."
    echo "For example, try: sh cw-solver.sh w...i....n"
    echo
    exit $E_NOPATT
fi

echo

grep ^"$1"$ "$DICT"
echo

exit $?
