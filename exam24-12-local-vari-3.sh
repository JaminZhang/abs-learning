#!/bin/bash

echo "==OUTSIDE Function (global)=="
t=$(exit 1)
echo $?

echo

function0 ()
{
    echo "==INSIDE Function=="
    echo "Global"
    t0=$(exit 1)
    echo $?

    echo
    echo "Local declared & assigned in same command."
    local t1=$(exit 1)
    echo $?

    echo
    echo "Local declared, then assigned (separate commands)."
    local t2
    t2=$(exit 1)
    echo $?

}

function0
