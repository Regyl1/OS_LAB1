#!/usr/bin/bash

exit1()
{
if [ -z $1 ]
then
exit 0
else

local re
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $1 -lt 256 ]] || ! [[ $1 -ge 0 ]]
then
return 11
fi

exit $1
fi
}
