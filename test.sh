[ 1 -eq 1 ] && [ -n "`echo true 1>&2`" ]

[ 1 -eq 2 -a -n "`echo true 1>&2`" ]

[[ 1 -eq 2 && -n "`echo true 1>&2`" ]]

a=3

if [ "$a" -gt 0 ]
then
    if [ "$a" -lt 5 ]
    then
        echo "The value of \"a\" lies somewhere between 0 and 5."
    fi
fi

if [ "$a" -gt 0 ] && [ "$a" -lt 5 ]
then
    echo "The value of \"a\" lies somewhere between 0 and 5."
fi

