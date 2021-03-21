#!/bin/bash

NAME=$1
LAST=$2
Show=$3

if [ "$Show" = "true" ]; then 
	echo "Hello, $NAME $LAST. Today's date is $(date)"
else
	echo "Enable 'show' option to display information"
fi
