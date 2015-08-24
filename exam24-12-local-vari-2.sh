#!/bin/bash

func ()
{
    global_var=37
}

echo "global_var = $global_var"

func
echo "global_var = $global_var"
