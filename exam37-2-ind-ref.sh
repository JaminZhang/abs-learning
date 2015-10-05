#!/bin/bash

a=letter_of_alphabet
letter_of_alphabet=z

echo "a = $a"

echo "Now a = ${!a}"

echo

t=table_cell_3
table_cell_3=24
echo "t = ${!t}" 
table_cell_3=387
echo "Value of t changed to ${!t}"

exit 0
