#!/usr/bin/bash

#Обработка ошибок

error_check()
{

case "$1" in
"1")
echo -e "\e[31mАргументы должны быть целыми числами.\e[0m" >&2
;;
"2")
echo -e "\e[31mНевозможное действие: Деление на ноль.\e[0m" >&2
;;
"3")
echo -e "\e[31mНеправильно введено математическое действие. Справка по командам ./main.sh help.\e[0m" >&2
;;
esac
exit $1
}


#main
case "$1" in

calc)
source ./calc.sh
calc $2 $3 $4
error_check $?
;;

search)
source ./search.sh
search $3 $2
;;

reverse)
source ./reverse.sh
reverse $2 $3
;;

strlen)
source ./strlen.sh
strlen $2
;;

log)
source ./log.sh
log
;;

exit)
if [ $# -gt 2 ]
then
source ./exit.sh
exit1 $2
fi
;;

help)
source ./help.sh
help
;;

interactive)
source ./interactive.sh
interactive
;;

*)
;;
esac
exit 0
