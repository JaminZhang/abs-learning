#!/bin/bash

echo -n "Enter the value of variable 'var1': "

read var1

echo "var1 = $var1"

echo

echo -n "Enter the values of variables 'var2' and 'var3' "
echo -n "(separated by a space or tab): "
read var2 var3
echo "var2 = $var2      var3 = $var3"

exit 0
