#!/bin/bash
# background-loop.sh

for i in 1 2 3 4 5 6 7 8 9 10           # First loop.
do
    echo -n "$i "
    sleep 1
done &  # Run this loop in backgroud.
        # Will sometimes execute after second loop.

echo    # This 'echo' sometimes will not display.

for i in 11 12 13 14 15 16 17 18 19 20  # Second loop.
do
    echo -n "$i "
    sleep 1
done

echo    # This 'echo' sometimes will not display.
