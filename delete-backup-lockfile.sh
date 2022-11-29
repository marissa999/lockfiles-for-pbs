#!/bin/bash

LOCKFILEDIR=/tmp/pbs-lockfiles

if [ -z "$1" ]; then
    echo "Name not specified... Exiting
    exit 1
fi

if [ ! -d $LOCKFILEDIR ]; then
    echo "Directory $LOCKFILEDIR does not exist. Creating it..."
    mkdir -p $LOCKFILEDIR
fi

LOCKFILEPATH=$LOCKFILEDIR/$1.lock

if [ ! -f "$LOCKFILEPATH" ]; then
    echo "$LOCKFILEPATH does not exist."
    exit 1
fi

rm $LOCKFILEPATH
echo "Deleted $LOCKFILEPATH"