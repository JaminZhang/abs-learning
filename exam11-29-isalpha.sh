#!/bin/bash

SUCCESS=0
FAILURE=1

isalpha()
{
    if [ -z "$1" ]
    then
        return $FAILURE
    fi

    case "$1" in
        [a-zA-Z]* ) return $SUCCESS;;
        *         ) return $FAILURE;;
    esac
}

isalpha2 ()
{
    [ $# -eq 1 ] || return $FAILURE

    case $1 in
        *[!a-zA-Z]*|"" ) return $FAILURE;;
        *              ) return $SUCCESS;;
    esac
}

isdigit ()
{
    [ $# -eq 1 ] || return $FAILURE;

    case $1 in
        *[!0-9]*|"" ) return $FAILURE;;
        *           ) return $SUCCESS;;
    esac
}

check_var ()
{
    if isalpha "$@"
    then
        echo "\"$*\" begins with an alpha character."
        if isalpha2 "$@"
        then
            echo "\"$*\" contains only alpha characters."
        else
            echo "\"$*\" contains at least one non-alpha character."
        fi
    else
        echo "\"$*\" begins with a non-alpha character."
    fi
    echo
}

digit_check ()
{
if isdigit "$@"
then
    echo "\"$*\" contains only digits [0 - 9]."
else
    echo "\"$*\" has at least one non-digit character."
fi

echo

}
    
a=23skidoo
b=H3llo
c=-What?
e=$(echo $b)
f=AbcDef
g=27234
h=27a34
i=27.34

check_var $a
check_var $b
check_var $c
check_var $d
check_var $e
check_var $f
check_var

digit_check $g
digit_check $h
digit_check $i

exit 0
