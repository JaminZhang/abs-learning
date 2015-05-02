#!/bin/bash

echo

if test -z "$1"
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

if /usr/bin/test -z "$1"
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

if [ -z "$1" ]
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi  

echo

if /usr/bin/[ -z "$1" ]
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

exit 0
