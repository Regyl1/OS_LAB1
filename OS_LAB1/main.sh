#!/usr/bin/bash

case "$1" in

calc)
source ./calc.sh
calc $2 $3 $4
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
