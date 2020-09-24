#!/usr/bin/bash

search()
{
local err
check_file_exists "$2"
err=$?
if ! [ $err -eq 0 ]; then return "$err"; fi
check_file_read "$2"
err=$?
if ! [ $err -eq 0 ]; then return "$err"; fi

grep -rs "$1" "$2"

return 0
}
