#!/bin/bash

OUTPUT=$(xrandr | grep LV | awk '{print $1}')

INCR=.05 

old_brightness=$(xrandr --verbose | grep rightness | awk '{ print $2 }')

if [ -z "$1" ]
then
    bright=1

else
    if [ "$1" = "+" ]
    then
        bright=$(echo "scale=2; $old_brightness + $INCR" | bc)

    else
        if [ "$1" = "-" ]
        then
            bright=$(echo "scale=2; $old_brightness - $INCR" | bc)

        else
            if [ "$1" = "#" ]
            then
                bright=$old_brightness

            else
                if [[ "$1" = "h" || "$1" = "H" ]]
                then
                    echo
                    echo "Usage:"
                    echo "$0 [No args]    Sets/resets brightness to default (1.0)."
                    echo "$0 +            Increments brightness by 0.5."
                    echo "$0 -            Decrements brightness by 0.5."
                    echo "$0 #            Echoes current brightness without changing it."
                    echo "$0 N (number)   Sets brightness to N (useful range .7 - 1.2)."
                    echo "$0 h [H]        Echoes this help message."
                    echo "$0 any-other    Gives xrandr usage message."

                    bright=$old_brightness
                else

                    bright="$1"bright="$1"
                fi
            fi
        fi
    fi
fi

xrandr --output "$OUTPUT" --brightness "$bright"

E_CHANGE0=$?
echo "Current brightness = $bright"

exit $E_CHANGE0
