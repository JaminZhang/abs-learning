#!/bin/bash

func ()
{
    local local_var=23
    echo 
    echo "\"local var\" in fucntion = $local_var"
    global_var=999

    echo "\"global_var\" in function = $global_var"
}

func

echo
echo "\"loc_var\" outside function = $loc_var"

echo "\"global_var\" outside function = $global_var"

echo

exit 0
