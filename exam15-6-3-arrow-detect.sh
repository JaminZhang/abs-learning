#!/bin/bash

while true
do
    read -sn1 a
    test "$a" == `echo -en "\e"` || continue
    read -sn1 a
    test "$a" == "[" || continue
    read -sn1 a
    case "$a" in
        A) echo "up";;
        B) echo "down";;
        C) echo "right";;
        D) echo "left";;
    esac
done
