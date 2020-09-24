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


read command
case $command in
1)
read action
read arg1
read arg2
source ./calc.sh
calc $action $arg1 $arg2
;;
2)
read arg1
read arg2
source ./search.sh
search $arg2 $arg1
;;
3)
read arg1
read arg2
source ./reverse.sh
reverse $arg1 $arg2
;;
4)
read str
source ./strlen.sh
strlen $str
;;
5)
source ./log.sh
log
;;
6)
read arg1
source ./exit.sh
exit1 $arg1
;;
7)
source ./help.sh
help
;;
esac
done
}
