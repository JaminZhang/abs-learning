#!/bin/bash

outer_variable=outer
echo
echo "outer_variable = $outer_variable"
echo

(

echo "outer_variable inside subshell = $outer_variable"
inner_variable=inner
echo "inner_variable inside subshell = $inner_variable"
outer_variable=inner
echo "outer_variable inside subshell = $outer_variable"

)

echo
echo "inner_variable outside subshell = $inner_variable"
echo "outer_variable outside subshell = $outer_variable"
echo

exit 0
