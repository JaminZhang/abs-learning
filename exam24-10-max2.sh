#!/bin/bash

EQUAL=0 
E_PARAM_ERR=-99999

max2 ()
{
    if [ -z "$2" ]
    then
        echo $E_PARAM_ERR
        return
    fi

    if [ "$1" -eq "$2" ]
    then
        echo $EQUAL
        return
    else
        if [ "$1" -gt "$2" ]
        then
            retval=$1
        else
            retval=$2
        fi
    fi

    echo $retval
}

return_val=$(max2 33001 33997)

if [ "$return_val" -eq "$E_PARAM_ERR" ]
then
    echo "Error in parameters passed to comparison function!"
elif [ "$return_val" -eq "$EQUAL" ]
then
    echo "The two numbers are equal."
else
    echo "The larger of the two numbers is $return_val."
fi

exit 0
