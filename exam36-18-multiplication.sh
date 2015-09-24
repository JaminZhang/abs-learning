#!/bin/bash

multiply ()
{
    local product=1

    until [ -z "$1" ]
    do
        let "product *= $1"
        shift
    done

    echo $product
}

mult1=15383; mult2=25211

val1=`multiply $mult1 $mult2`

echo "$mult1 X $mult2 = $val1"

mult1=25; mult2=5; mult3=20
val2=`multiply $mult1 $mult2 $mult3`
echo "$mult1 X $mult2 X $mult3 = $val2" 

mult1=188; mult2=37; mult3=25; mult4=47
val3=`multiply $mult1 $mult2 $mult3 $mult4`
echo "$mult1 X $mult2 X $mult3 X $mult4 = $val3"

capitalize_ichar ()
{
    string0="$@"

    firstchar=${string0:0:1}
    string1=${string0:1}
    FirstChar=`echo "$firstchar" | tr a-z A-Z`
    echo "$FirstChar$string1"
}

newstring=`capitalize_ichar "every sentence should start with a capital letter."`
echo "$newstring"

exit 0
