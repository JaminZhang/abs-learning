#!/bin/bash

generate_list ()
{
    echo "one two three"
}

for word in $(generate_list)
do
    echo "$word"
done

