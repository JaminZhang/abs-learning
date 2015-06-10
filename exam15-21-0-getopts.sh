#!/bin/bash

while getopts ":abcde:fg" Option
do
    case $Option in
        a )
        b )
        c )
        d )
        e )
        f )
        g )
    esac
done
shift $(($OPTIND - 1))

