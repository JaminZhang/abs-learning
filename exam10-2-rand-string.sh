#!/bin/bash

if [ -n "$1"  ]
then
    str0="$1"
else
    str0="$$"
fi

POS=2
LEN=8

str1=$(echo "$str0" | md5sum | md5sum )

randstring="${str1:$POS:$LEN}"

echo "$randstring"

exit $?

