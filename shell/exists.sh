#!/bin/sh

# exists: reports if an executable is in path
# jessy@jessywilliams.com

# ------------------------------------------------------------------------------

# validate parameters
if [ -z "$1" ]; then
	echo "usage: exists executable"
	exit 1
fi

# exit 0 if executable is in path else 1
hash "$1" 2> /dev/null && exit 0
exit 1
