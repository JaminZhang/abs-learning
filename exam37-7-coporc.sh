#!/bin/bash4

echo; echo
a=aaa
b=bbb
c=ccc

coproc echo "one two three"
while read -u ${COPROC[0]} a b c;  #  Note that this loop
do                                 #+ runs in a subshell.
      echo "Inside while-read loop: ";
      echo "a = $a"; echo "b = $b"; echo "c = $c"
      echo "coproc file descriptor: ${COPROC[0]}"
done 

      # a = one
      # b = two
      # c = three
      # So far, so good, but ...

      echo "-----------------"
      echo "Outside while-read loop: "
      echo "a = $a"  # a =
      echo "b = $b"  # b =
      echo "c = $c"  # c =
      echo "coproc file descriptor: ${COPROC[0]}"
      echo
      #  The coproc is still running, but ...
      #+ it still doesn't enable the parent process
      #+ to "inherit" variables from the child process, the while-read loop.

      #  Compare this to the "badread.sh" script.
