#!/bin/bash

function show_input_type()
{
    [ -p /dev/fd/0 ] && echo PIPE || echo STDIN
}

show_input_type "INPUT"
echo "Input" | show_input_tyt
exit

