#!/bin/bash

__say_what_i_do()
{
    cat << EOF
Usage: $0 <backup_file.tar.[gz|xz|bz2|zst]>

Restore files into sdcard directory.
EOF
}

SDCARD_DIR="/storage/emulated/0"

if [ -z $1 ]; then
    __say_what_i_do
    exit 1
else
    tar xvf $1 -C $SDCARD_DIR
fi
