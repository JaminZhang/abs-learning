#!/bin/bash

params=$#
param=1

while [ "$param" -le "$params" ]
do
    echo -n "Command-line parameter "
    echo -n \$$param

    echo -n " = "
    eval echo \$$param

    (( param ++ ))
done

exit $?
