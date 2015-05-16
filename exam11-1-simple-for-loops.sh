#!/bin/bash
# Listing the planets.

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
    echo $planet
done

echo; echo


for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
do
    echo $planet
done

echo; echo "Whoops! Pluto is no longer a planet!"

exit 0
