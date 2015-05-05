#!/bin/bash

randomBetween() {

    syntax() {
        echo
        echo    "Syntax: randomBetween [min] [max] [multiple]"
        echo
        echo -n "Expects up to 3 passed parameters, "
        echo    "But all are completely optional."
        echo    "min is the minimum value"
        echo    "max is the maximum value"
        echo -n "multiple specifies that the answer must be "
        echo    "a multiple of this value."
        echo    "   i.e. answer must be evenly divisiable by this number."
        echo
        echo    "If any value is missing, defaults area supplied as 0 32767 1"
        echo -n "Successful completion returns 0,"
        echo    "unsuccessful completion returns"
        echo    "function syntax and 1."
        echo -n "The answer is retured in the global variable "
        echo    "randomBetweenAnswer"
        echo -n "Negative values for any passed parameter are "
        echo    "handled correctly."
    }

    local min=${1:-0}
    local max=${2:-32767}
    local divisibleBy=${3:-1}

    local x
    local spread

    [ ${divisibleBy} -lt 0 ] && divisibleBy=$((0-divisibleBy))
    
    if [ $# -gt 3 -o ${divisibleBy} -eq 0 -o ${min} -eq ${max} ]; then
        syntax
        return 1
    fi

    if [ ${min} -gt ${max} ]; then
        x=${min}
        min=${max}
        max=${x}
    fi

    if [ $((min/divisibleBy*divisibleBy)) -ne ${min} ]; then
        if [ ${min} -lt 0 ]; then
            min=$((min/divisibleBy*divisibleBy))
        else
            min=$((((min/divisibleBy)+1)divisibleBy))
        fi
    fi

    if [ $((max/divisibleBy*divisibleBy)) -ne ${max} ]; then 
        if [ ${max} -lt 0 ]; then
            max=$((((max/divisibleBy)-1)*divisibleBy))
        else
            max=$((max/divisibleBy*divisibleBy))
        fi
    fi        

    spread=$((max-min))
    [ ${spread} -lt 0 ] && spread=$((0-spread))
    let spread+=divisibleBy
    randomBetweenAnswer=$(((RANDOM%spread)/divisibleBy*divisibleBy+min))

    return 0

}


min=-14
max=20
divisibleBy=3

declare -a answer
minimum=${min}
maximum=${max}
    if [ $((minimum/divisibleBy*divisibleBy)) -ne ${minimum} ]; then
        if [ ${minimum} -lt 0 ]; then
            minimum=$((minimum/divisibleBy*divisibleBy))
        else
            minimum=$((((minimum/divisibleBy)+1)divisibleBy))
        fi
    fi

    if [ $((maximum/divisibleBy*divisibleBy)) -ne ${maximum} ]; then 
        if [ ${maximum} -lt 0 ]; then
            maximum=$((((maximum/divisibleBy)-1)*divisibleBy))
        else
            maximum=$((maximum/divisibleBy*divisibleBy))
        fi
    fi        

disp=$((0-minimum))
for ((i=${minimum}; i<=${maximum}; i+=divisibleBy)); do
    answer[i+disp]=0
done

loopIt=1000

for ((i=0; i<${loopIt}; ++i)); do
    randomBetween ${max} ${min} ${divisibleBy}

    [ ${randomBetweenAnswer} -lt ${min} -o ${randomBetweenAnswer} -gt ${max} ] \
    && echo MIN or MAX error - ${randomBetweenAnswer}!
    [ $((randomBetweenAnswer%${divisibleBy})) -ne 0 ] \
    && echo DIVISIBLE BY error - ${randomBetweenAnswer}!

    answer[randowmBetweenAnswer+disp]=$((answer[randomBetweenAnswer+disp]+1))
done

for ((i=${minimum}; i<=${maximum}; i+=divisibleBy)); do
    [ ${answer[i+disp]} -eq 0 ] \
    && echo "We never got an answer of $i." \
    || echo "${i} occurred ${answer[i+disp]} times."
done

exit 0
