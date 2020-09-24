#!/usr/bin/bash

calc()
{
#if [[ "$2" != [0-9]+ ]] || [[ "$3" != [0-9]+ ]]
#then
#echo -e "\e[31mNeed integer.\e[0m"
#exit 4
#fi
case "$1" in
sum) echo $(($2+$3)) ;;
sub) echo $(($2-$3)) ;;
mul) echo $(($2*$3)) ;;
div)
if [ $3 -eq 0 ]
then
echo -e "\e[31mDivision by zero.\e[0m"
exit 5
else
echo $(($2/$3))
fi
;;
*) echo -e "\e[31mWrong action.\e[0m";;
esac
}
