#!/bin/bash

sum_and_product ()
{
    echo $(( $1 + $2 )) $(( $1 * $2 ))
}

echo
echo "Enter first number "
read first

echo
echo "Enter second number "
read second
echo

retval=`sum_and_product $first $second` 
sum=`echo "$retval" | awk '{print $1}'`
product=`echo "$retval" | awk '{print $2}'`

echo "$first + $second = $sum"
echo "$first * $second = $product"
echo

exit 0
