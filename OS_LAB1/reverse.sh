#!/usr/bin/bash

reverse()
{
check_file_exists "$1"
echo "$?"
if ! [ $? -eq 0 ]; then return $?; fi
check_file_read "$1"
if ! [ $? -eq 0 ]; then return $?; fi
check_file_write "$2"
if ! [ $? -eq 0 ]; then return $?; fi

rev $1 | tac > $2
}
