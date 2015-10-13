#!/bin/bash

test_char ()
{
    case "$1" in
        [[:print:]] )  echo "$1 is a printable character.";;&
        [[:alnum:]] )  echo "$1 is an alpha/numeric character.";;&
        [[:alpha:]] )  echo "$1 is an alphabetic character.";;&
        [[:lower:]] )  echo "$1 is a lowercase alphabetic character.";;&
        [[:digit:]] )  echo "$1 is an numeric character.";&
        %%%@@@@@    )  echo "********************************";;
    esac
}

echo

test_char 3

echo

test_char m

test_char /

echo


