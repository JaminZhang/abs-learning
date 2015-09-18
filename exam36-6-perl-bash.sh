#!/bin/bash

echo "This precedes the embedded Perl script within \"$0\"."
echo "==============================================================="

perl -e 'print "This line prints from an embedded Perl script.\n";'

echo "==============================================================="
echo "However, the script may also contain shell and system commands."

exit 0

