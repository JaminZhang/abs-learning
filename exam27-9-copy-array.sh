#!/bin/bash

CpArray_Mac() {
    echo -n 'eval '
    echo -n "$2"
    echo -n '=( ${'
    echo -n "$1"
    echo -n '[@]} )'
}

declare -f CopyArray
CopyArray=CpArray_Mac

Hype ()
{
    local -a TMP
    local -a hype=( Really Rocks )
    
    $($CopyArray $1 TMP)
    TMP=( ${TMP[@]} ${hype[@]} )
    $($CopyArray TMP $2)
}

declare -a before=( Advanced Bash Scripting )
declare -a after

echo "Array Before = ${before[@]}"

Hype before after

echo "Array After = ${after[@]}"

echo "What ${after[@]:3:2}?"

declare -a modest=( ${after[@]:2:1} ${after[@]:3:2} )

echo "Array Modest = ${modest[@]}"

echo "Array Before = ${before[@]}"

exit 0
