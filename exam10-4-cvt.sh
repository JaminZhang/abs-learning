#!/bin/bash

OPERATION=mactopbm
SUFFIX=pbm

if [ -n "$1" ]
then
    directory=$1
else
    directory=$PWD
fi

for file in $directory/*
do
    filename=${filename%.*c}
    $OPERATION $file > "$filename.$SUFFIX"

    rm -f $file
    echo "$filename.$SUFFIX"
done

exit 0

INFMT=png
OUTFMT=pdf

for pic in *"$INFMT"
do
    p2=$(ls "$pic" | sed -e s/\.$INFMT//)
    convert "$pic" $p2.$OUTFMT
done

exit $?


