#!/usr/bin/bash

#Обработка ошибок

error_check()
{

case "$1" in
1)
echo -e "\e[31mERROR 1: Аргументы должны быть целыми числами.\e[0m" >&2
;;
2)
echo -e "\e[31mERROR 2: Невозможное действие: Деление на ноль.\e[0m" >&2
;;
3)
echo -e "\e[31mERROR 3: Неправильно введено математическое действие. Справка по командам ./main.sh help.\e[0m" >&2
;;
4)
echo -e "\e[31mERROR 4: Неправильно введена команда. Справка по командам ./main.sh help\e[0m" >&2
;;
5)
echo -e "\e[31mERROR 5: Неправильное кол-ва аргументов. Справка по командам ./main.sh help\e[0m" >&2
;;
6)
echo -e "\e[31mERROR 6: Искомый файл не найден или не существует\e[0m" >&2
;;
7)
echo -e "\e[31mERROR 7: Недостаточно прав для исполнения скрипта\e[0m" >&2
;;
8)
echo -e "\e[31mERROR 8: Недостаточно прав для чтения файла\e[0m" >&2
;;
9)
echo -e "\e[31mERROR 9: Недостаточно прав для записи файла\e[0m"
;;
10)
echo -e "\e[31mERROR 10: Файл скрипта не найдет или не существует\e[0m"
;;
11)
echo -e "\e[31mERROR 11: Код завершения должен быть целым числом в диапазоне [0-255]\e[0m"
;;
esac
if ! [ -z $2 ]
then
echo $1 >&2
else
exit $1
fi
}

check_arg_count()
{
if ! [ $1 -eq $2 ]
then
return 5
fi
}

check_file_exists()
{
if ! [ -e "$1" ]
then
return 6
fi
}

check_file_access()
{
if ! [ -x "$1" ]
then
return 7
fi
}

check_file_read()
{
if ! [ -r "$1" ]
then
return 8
fi
}

check_file_write()
{
if ! [ -w "$1" ]
then
return 9
fi
}
check_script_exists()
{
if ! [ -e "$1" ]
then
return 10
fi
}

#main


case "$1" in

calc)
#####
err=0
check_script_exists ./calc.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./calc.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 4
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./calc.sh
calc $2 $3 $4

err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
;;

search)
#####
err=0
check_script_exists ./search.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./search.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 3
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./search.sh
search $3 $2
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
;;

reverse)
#####
err=0
check_script_exists ./reverse.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./reverse.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 3
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./reverse.sh
reverse $2 $3
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
;;

strlen)
#####
err=0
check_script_exists ./strlen.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./strlen.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 2
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./strlen.sh
strlen "$2"
;;

log)
#####
err=0
check_file_exists ./log.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./log.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 1
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./log.sh
log
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
;;

exit)
#####
err=0
check_script_exists exit.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read exit.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi

if [ $# -gt 2 ]
then
error_check 5
else
source ./exit.sh
exit1 $2
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
fi
;;

help)
####
err=0
check_script_exists ./help.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./help.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 1
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./help.sh
help
;;

interactive)
#####
err=0
check_script_exists ./interactive.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_file_read ./interactive.sh
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
check_arg_count $# 1
err=$?
if ! [ $err -eq 0 ]; then error_check $err; fi
#####
source ./interactive.sh
interactive
;;
*)
error_check 4
;;
esac
exit 0
