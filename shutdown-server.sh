#!/bin/bash

LOCKFILEDIR=/tmp/pbs-lockfiles

if [ ! -d $LOCKFILEDIR ]; then
    echo "Directory $LOCKFILEDIR does not exist. Creating it..."
    mkdir -p $LOCKFILEDIR
fi

FILES=$(ls $LOCKFILEDIR | wc -l)

if [ "$FILES" != 0 ]; then
    echo "At least one lock file still exists. Do nothing"
    exit 0
else
    echo "No lock file found, shut down server now..."
    ### systemctl poweroff
    exit 0
fi