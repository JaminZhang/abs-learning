#!/bin/bash

Line[1]="I do not know which to prefer,"
Line[2]="The beauty of inflections"
Line[3]="Or the beauty of innuendoes,"
Line[4]="The blackbird whistling"
Line[5]="Or just after."

Attrib[1]=" Wallace Stevens"
Attrib[2]="\"Thirteen Ways of Looking at a Blackbird\""

echo

tput bold

for index in 1 2 3 4 5
do
    printf "     %s\n" "${Line[index]}"
done

for index in 1 2
do
    printf "          %s\n" "${Attrib[index]}"
done

tput sgr0

echo

exit 0
