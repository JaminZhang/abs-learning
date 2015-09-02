#!/bin/bash

var=23

echo "\$var   = $var"

echo "\$\$var  = $$var"

echo "\\\$\$var = \$$var"

a=letter_of_alphabet
letter_of_alphabet=z

echo

echo "a = $a"

eval a=\$$a

echo "Now a = $a"

echo

t=table_cell_3
table_cell_3=24
echo "\"table_cell_3\" = $table_cell_3"  
echo -n "dereferenced \"t\" = "; eval echo \$$t
echo

t=table_cell_3
NEW_VAL=387
table_cell_3=$NEW_VAL

echo "Changing value of \"table_cell_3\" to $NEW_VAL."
echo "\"table_cell_3\" now $table_cell_3"
echo -n "dereferenced \"t\" now "; eval echo \$$t

echo

exit 0

