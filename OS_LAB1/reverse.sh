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
else
if ! [ -w "$2" ]; then return 12; fi
echo > "$2"
fi




rev $1 > "temp"
tac "temp" > $2
rm temp
}
