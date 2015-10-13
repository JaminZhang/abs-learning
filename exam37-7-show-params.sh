#!/bin/bash

E_BADPARAMS=99

if [ -z "$1" ]
then
    echo "Usage $0 param1 ..."
    exit $E_BADPARAMS
fi

echo ${@:0}
