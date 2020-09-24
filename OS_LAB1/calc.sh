#!/usr/bin/bash

calc()
{
if [[ "$2" == ^[+-]?[0-9]+$ ]] || [[ "$3" == ^[+-]?[0-9]+$ ]]
then
return 1
fi

case "$1" in
sum) echo $(($2+$3)) ;;
sub) echo $(($2-$3)) ;;
mul) echo $(($2*$3)) ;;
div)
if [ $3 -eq 0 ]
then
return 2
else
echo $(($2/$3))
fi
;;
*)
return 3
;;
esac
return 0
}
