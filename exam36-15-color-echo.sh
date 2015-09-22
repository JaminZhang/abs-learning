#!/bin/bash

black='\E[30;47m'
red='\E[31;47m'
green='\E[32;47m'
yellow='\E[33;47m'
blue='\E[34;47m'
magenta='\E[35;47m'
cyan='\E[36;47m'
white='\E[37;47m'

alias Reset="tput sgr0"

cecho ()
{
    local default_msg="No message passed."
    message=${1:-$default_msg}
    color=${2:-$black}

    echo -e "$color"
    echo "$message"
    Reset

    return
}

cecho "Feeling blue..." $blue
cecho "Magenta looks more like purple." $magenta
cecho "Green with envy." $green
cecho "Seeing red?" $red
cecho "Cyan, more familiarly known as aqua." $cyan
cecho "No color passed (defaults to black)."
cecho "\"Empty\" color passed (defaults to black)." ""
cecho
cecho "" ""

echo

exit 0
