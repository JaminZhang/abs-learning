#!/bin/bash

if [ -n $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

if [ -n "$string1" ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

if [ $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

echo

string1=initialized

if [ $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

string1="a = b"
if [ $string1 ]
then
    echo "String \"string1\" is not null."
else
    echo "String \"string1\" is null."
fi

exit 0
