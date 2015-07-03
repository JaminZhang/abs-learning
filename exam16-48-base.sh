#!/bin/bash

NOARGS=85
PN=`basename "$0"`
VER=`echo '$Revision: 1.2 $' | cut -d' ' -f2`

Usage () {
    echo "$PN - print number to different bases, $VER (stv '95)
usage: $PN [number ...]

If no number is given, the numbers are read from standard input.
A number may be
    binary (base 2)     starting with 0b (i.e. 0b1100)
    octal (base 8)      starting with 0  (i.e. 014)
    hexadecimal (base 16)   starting with 0x (i.e. 0xc)
    decimal         otherwise (i.e. 12)" >&2
    exit $NOARGS
}

Msg () {
    for i
    do echo "$PN: $i" >&2
    done
}

Fatal () { Msg "$@"; exit 66; }

PrintBases () {
    for i
    do
        case "$i" in
            0b*)        ibase=2;;
            0x*|[a-f]*|[A-F]*)  ibase=16;;
            0*)         ibase=8;;
            [1-9]*)     ibase=10;;
            *)
                Msg "illegal number $i - ignored"
                continue;;
        esac

        number=`echo "$i" | sed -e 's:^0[bBxX]::' | tr '[a-f]' '[A-F]'`

        dec=`echo "ibase=$ibase; $number" | bc`
        case "$dec" in
            [0-9]*) ;;
            *)      continue;;
        esac

        echo `bc <<!
            obase=16; "hex="; $dec
            obase=10; "dec="; $dec
            obase=8;  "oct="; $dec
            obase=2;  "bin="; $dec
!
    ` | sed -e 's: :    :g'
    done
}

while [ $# -gt 0 ]
do
    case "$1" in
        --)     shift; break;;
        -h)     Usage;;
        -*)     Usage;;
         *)     break;;
    esac
    shift
done

if [ $# -gt 0 ]
then
    PrintBases "$@"
else
    while read line
    do
        PrintBases $line
    done
fi

exit
