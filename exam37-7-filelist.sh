#!/bin/bash

shopt -s globstar

echo "Using *"; echo
for filename in *
do
      echo "$filename"
done

echo; echo "--------------"; echo

echo "Using **"
for filename in **
do
    echo "$filename"
done

exit
