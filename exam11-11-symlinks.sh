#!/bin/bash

directory=${1-`pwd`}

echo "symloic links in directory \"$directory\""

for file in "$( find $directory -type l )"
do
    echo "$file"
done | sort 

