#!/bin/bash

echo

echo "We are outside the subshell."
echo "Subshell level OUTSIDE subshell = $BASH_SUBSHELL"

echo; echo

outer_variable=Outer
global_variable=

(
echo "We are inside the subshell."
echo "Subshell level INSIDE subshell = $BASH_SUBSHELL"
inner_variable=Inner

echo "From inside subshell, \"inner_variable\" = $inner_variable"
echo "From inside subshell, \"outer\" = $outer_variable"

global_variable="$inner_variable"

)

echo; echo
echo "We are outside the subshell."
echo "Subshell level OUTSIDE subshell = $BASH_SUBSHELL"
echo

if [ -z "$inner_variable" ]
then
    echo "inner_variable undefined in main body of shell"
else
    echo "inner_variable defined in main body of shell"
fi

echo "From main body of shell, \"inner_variable\" = $inner_variable"

echo "global_variable = "$global_variable""

echo

echo "-----------------"; echo

var=41

( let "var+=1"; echo "\$var INSIDE subshell = $var" )

echo "\$var OUTSIDE subshell = $var"

exit 0
