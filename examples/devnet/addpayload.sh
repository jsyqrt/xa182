#!/bin/bash

# Check for payload format option (default is uuencode).
if [[ "$1" == '--binary' ]]; then
	binary=1
	shift
fi


if [[ ! "$1" ]]; then
	echo "Usage: $0 [--binary] PAYLOAD_FILE"
	exit 1
fi


if [[ $binary -ne 0 ]]; then
	# Append binary data.
	sed \
		-e 's/binary=./binary=1/' \
			 install.sh.in >install.sh
	echo "PAYLOAD:" >> install.sh

	cat $1 >>install.sh
fi

