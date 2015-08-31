#!/bin/bash

ARRAY1=(
        VAR1_1=value11
        VAR1_2=value12
        VAR1_3=value13
        )

ARRAY2=(
        VARIABLE="test"
        STRING="VAR1=value1 VAR2=value2 VAR3=value3"
        ARRAY21=${ARRAY1[*]}
    )

function print () {
        OLD_IFS="$IFS"
        IFS=$'\n'

        TEST1="ARRAY2[*]"
        local ${!TEST1}

        echo
        echo "\$TEST1 = $TEST1"
        echo; echo
        echo "{\$TEST1} = ${!TEST1}"

        echo
        echo "-------------------------------------------"; echo
        echo

        echo "Variable VARIABLE: $VARIABLE"

        IFS="$OLD_IFS"
        TEST2="STRING[*]"
        local ${!TEST2}
        echo "String element VAR2: $VAR2 from STRING"

        TEST2="ARRAY21[*]"
        local ${!TEST2}
        echo "Array element VAR1_1: $VAR1_1 from ARRAY21"
    }

print
echo

exit 0
