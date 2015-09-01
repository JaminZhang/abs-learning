#!/bin/bash

BP=100

SP=$BP

Data=

declare -a stack

push()
{
    if [ -z "$1" ] 
    then
        return
    fi

    let "SP -= 1"
    stack[$SP]=$1

    return
}

pop() 
{
    Data=

    if [ "$SP" -eq "$BP" ] 
    then
        return
    fi

    Data=${stack[$SP]}
    let "SP += 1"
    return
}

status_report()
{
    echo "-------------------------------------"
    echo "REPORT"
    echo "Stack Pointer = $SP"
    echo "Just popped \""$Data"\" off the stack."
    echo "-------------------------------------"
    echo
}

echo

pop
status_report

echo

push garbage
pop
status_report 

value1=23;        push $value1
value2=skidoo;    push $value2
value3=LAST;      push $value3

pop
status_report
pop
status_report
pop
status_report

echo

exit 0
