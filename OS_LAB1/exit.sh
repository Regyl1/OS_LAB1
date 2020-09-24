#!/usr/bin/bash

exit1()
{
if [ -z $1 ]
then
exit 0
else
exit $1
fi
}
