#!/bin/bash

JUST_A_SECOND=1

funky ()
{
    echo "This is a funky function."
    echo "Now exiting funky function."
}

fun ()
{
    i=0
    REPEATS=30

    echo
    echo "And now the fun really begins."
    echo

    sleep $JUST_A_SECOND
    while [ $i -lt $REPEATS ]
    do
        echo "----------FUNCTIONS---------->"
        echo "<------------ARE-------------"
        echo "<------------FUN------------>"
        echo
        let "i+=1"
    done
}

funky
fun

f1 ()
{
      echo "Calling function \"f2\" from within function \"f1\"."
      f2
}

f2 ()
{
      echo "Function \"f2\"."
}

f1

f3 ()
{
    f4 ()
    {
        echo "Function \"f4\", inside \"f3\"."
    }
}

f4

echo

f3
f4

exit $?
