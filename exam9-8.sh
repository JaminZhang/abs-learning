#!/bin/bash

mecho ()
{
    echo "$1,$2,$3";
}

IFS=""
set a b c

mecho "$*"

mecho $*

mecho $@
mecho "$@"
