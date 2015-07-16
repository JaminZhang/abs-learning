#!/bin/bash

target_dir=\
/sys/devices/pci0000:00/0000:00:01.0/0000:01:00.0/backlight/acpi_video0

actual_brightness=$(cat $target_dir/actual_brightness)
max_brightness=$(cat $target_dir/max_brightness)
Brightness=$target_dir/brightness

let "req_brightness = actual_brightness"

if [ "$1" = "-" ]
then
    let "req_brightness = $actual_brightness - 1"
else
    if [ "$1" = "+" ]
    then
        let "req_brightness = $actual_brightness + 1"
    fi
fi

if [ $req_brightness -gt $max_brightness ]
then
    req_brightness=$max_brightness
fi

echo

echo "Old brightness = $actual_brightness"
echo "Max brightness = $max_brightness"
echo "Requested brightness = $req_brightness"
echo

echo $req_brightness > $Brightness
E_CHANGE1=$?


if [ "$?" -eq 0 ]
then
    echo "Changed brightness!"
else
     echo "Failed to change brightness!"
fi

act_brightness=$(cat $Brightness)
echo "Actual brightness = $act_brightness"

scale0=2
sf=100
pct=$(echo "scale=$scale0; $act_brightness / $max_brightness * $sf" | bc)
echo "Percentage brightness = $pct%"

exit $E_CHANGE1

