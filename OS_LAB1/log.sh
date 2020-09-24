#!/usr/bin/bash

log()
{
local err
check_file_exists "/var/log/anaconda/X.log"
err=$?
if ! [ $err -eq 0 ]; then return $err; fi
check_file_read "/var/log/anaconda/X.log"
err=$?
if ! [ $err -eq 0 ]; then return $err; fi

while read str
do
if [[ "$str" == *"(WW)"* && "$str" != *"(WW) warning, (EE) error, (NI) not implemented, (??) unknown"* ]]
then
echo -e ${str//"(WW)"/"\e[1;33mWarning:\e[0m"}
fi
done < "/var/log/anaconda/X.log"

while read str
do
if [[ "$str" == *"(II)"* && "$str" != *"(++) from command line, (!!) notice, (II) informational"* ]]
then
echo -e ${str//"(II)"/"\e[1;36mInformation:\e[0m"}
fi
done < "/var/log/anaconda/X.log"

}
