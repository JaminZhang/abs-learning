#!/bin/bash

CMDLINEPARAM=1

if [ $# -ge $CMDLINEPARAM ]
then
    NAME=$1
else
    NAME="John Doe"
fi

RESPONDENT="the author of this fine script"  

cat <<Endofmessage

Hello, there, $NAME.
Greetings to you, $NAME, from $RESPONDENT.

# This comment shows up in the output (why?).

Endofmessage

exit
