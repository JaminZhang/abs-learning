#!/bin/bash

while true
do
    for n in *.iso.*
    do
        [  "$n" = ".iso.opts" ] && continue
        beta=${n#.iso.}
        [ -r .Iso.$beta ] && continue
        [ -r .lock.$beta ] && sleep 10 && continue
        lockfile -r0 .lock.$beta || continue
        echo -n "$beta: " `date`
        run-isotherm $beta
        date
        ls -alF .Iso.$beta
        [ -r .Iso.$beta ] && rm -f .lock.$beta
        continue 2
    done
    break
done

exit 0
