#!/bin/bash

MAILDIR=~/mail/*
GREP_OPTS="-H -A 5 --color"
TARGETSTR="^From"

for file in $MAILDIR
do
    grep $GREP_OPTS "$TARGETSTR" "$file"
    echo
done

exit $?
