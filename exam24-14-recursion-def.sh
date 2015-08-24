#!/bin/bash

RECURSIONS=10
r_count=0
sp=" "

define_recursion ()
{
    ((r_count++))
    sp="$sp"" "
    echo -n "$sp"
    echo "\"The act of recurring ... \""

    while [ $r_count -le $RECURSIONS ]
    do
        define_recursion
    done
}

echo
echo "Recursion: "
define_recursion
echo

exit $?
