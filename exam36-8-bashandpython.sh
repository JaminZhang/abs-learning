#!/bin/bash

echo "This precedes the embedded Python script within \"$0.\""
echo "==============================================================="

python -c 'print "This line prints from an embedded Python script.\n";'

python -c 'k = raw_input( "Hit a key to exit to outer script. " )'

echo "==============================================================="
echo "However, the script may also contain shell and system commands."

exit 0
