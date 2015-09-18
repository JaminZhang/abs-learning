#!/bin/bash

speak()
{
    local IFS=+
    /usr/bin/mplayer -ao alsa -really-quiet -noconsolecontrols \
    "http://translate.google.com/translate_tts?tl=en&q="$*""
}

LINES=4

spk=$(tail -$LINES $0)
speak "$spk"
exit
# Browns. Nice talking to you.
