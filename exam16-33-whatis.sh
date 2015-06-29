#!/bin/bash

DIRECTORY="/bin"

for file in $DIRECTORY/*
do
    whatis `basename $file`
done

exit 0
