#!usr/bin/bash

interactive()
{
while [ 1 -eq 1 ]
do

echo "1)Calculation"
echo "2)Search"
echo "3)Reverse"
echo "4)StrLenght"
echo "5)Log"
echo "6)Exit"
echo "7)Help"
local err

read command
case $command in
1)
err=0
check_script_exists ./calc.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./calc.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####
echo "action:"
read action
echo "arg1:"
read arg1
echo "arg2:"
read arg2
source ./calc.sh
calc $action $arg1 $arg2

err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
;;

2)
err=0
check_script_exists ./search.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./search.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####
echo "arg1:"
read arg1
echo "arg2:"
read arg2
source ./search.sh
search $arg2 $arg1

err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
;;

3)
err=0
check_script_exists ./reverse.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./reverse.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####
echo "arg1:"
read arg1
echo "arg2:"
read arg2
source ./reverse.sh
reverse $arg1 $arg2

err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
;;

4)
err=0
check_script_exists ./strlen.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./strlen.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####
echo "str:"
read str
source ./strlen.sh
strlen $str
;;

5)
err=0
check_script_exists ./log.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./log.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####

source ./log.sh
log

err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
;;

6)
err=0
check_script_exists ./exit.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./exit.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####
echo "arg:"
read arg
source ./exit.sh

exit1 $arg

err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
;;

7)
err=0
check_script_exists ./help.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
check_file_read ./help.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err 1; fi
#####

source ./help.sh
help
;;
esac
done
}
