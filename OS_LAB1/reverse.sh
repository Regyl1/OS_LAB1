#!/usr/bin/bash

reverse()
{
local err
check_file_exists "$1"
err="$?"
if ! [ $err -eq 0 ]; then return $err; fi
check_file_read "$1"
err="$?"
if ! [ $err -eq 0 ]; then return $err; fi

check_file_exists "$2"
if [ $? -eq 0 ]; then
check_file_write "$2"
err="$?"
if ! [ $err -eq 0 ]; then return $err; fi
else
if ! touch "$2" 2> /dev/null; then return 12; fi
fi




rev $1 > "temp"
tac "temp" > $2
rm temp
}
