#!/bin/bash

assert ()
{
    E_PARAM_ERR=98
    E_ASSERT_FAILED=99

    if [ -z "$2" ]
    then
        return $E_PARAM_ERR
    fi

    lineno=$2

    if [ ! $1 ]
    then
        echo "Assertion failed:  \"$1\""
        echo "File \"$0\", line $lineno"
        exit $E_ASSERT_FAILED
    fi
}

a=5
b=6
condition="$a -lt $b"

assert "$condition" $LINENO

echo "This statement echoes only if the \"assert\" does not fail."

exit $?
