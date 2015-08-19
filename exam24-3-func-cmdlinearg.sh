#!/bin/bash

func ()
{
    echo "$1"
}

echo "First call to function: no arg passed."
echo "See if command-line arg is seen."
func

echo "============================================================"
echo
echo "Second call to function: command-line arg passed explicitly."
func $1

exit 0
