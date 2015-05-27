#!/bin/bash

declare -r PI=3.14159265358979
declare -r DecimalConstant=31373

Message1="Greetings,"
Message2="Earthling."

echo

printf "Pi to 2 decimal places = %1.2f" $PI
echo
printf "Pi to 9 decimal places = %1.9f" $PI

printf "\n"

printf "Constant = \t%d\n" $DecimalConstant

printf "%s %s \n" $Message1 $Message2

echo

echo

Pi12=$(printf "%1.12f" $PI)
echo "Pi to 12 decimal places = $Pi12"

Msg=`printf "%s %s \n" $Message1 $Message2`
echo $Msg; echo $Msg

E_BADDIR=85
var=nonexistent_directory

error()
{
    printf "$@" >&2
    echo
    exit $E_BADDIR
}

cd $var || error $"Can't cd to %s." "$var"




exit 0
