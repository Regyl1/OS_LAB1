#!usr/bin/bash

help()
{
echo "./main.sh [command] [arguments]"
echo
echo "commands:"
echo
echo "Calculator"
echo "./main.sh calc [action] [arg1] [arg2]"
echo "actions:"
echo "sum/sub/mul/div"
echo "Делает математическое действие [action] с аргументами. Аргументами являются целые числа"
echo
echo "Reverse"
echo "./main.sh reverse [arg1] [arg2]"
echo "В обратном порядке записывает содержимое файла, имя которого записано первым аргументом,"
echo "в файлс именем, переданным третьим аргументом"
echo
echo "StrLenght"
echo "./main.sh strlen [arg1]"
echo "Кол-во символов в строке, переданной вторым аргументом"
echo
echo "Log"
echo "./main.sh log"
echo "Выводит строки файла /var/log/anaconda/X.log,"
echo "содержащие предупреждения и информационные сообщения"
echo
echo "Exit"
echo "./main.sh exit [arg1]"
echo "Приложение завершает свою работу с кодом возврата, заданным первым параметром."
echo "Если код возврата не был задан, по умолчанию используется 0"
echo
echo "Help"
echo "./main.sh help"
echo "Вывод справки по использованию, в которой перечислены все действия и их аргументы"
echo
echo "Interactice"
echo "./main.sh interactive"
echo "Приложение переходит в интерактивный режим работы,"
echo "предоставляя пользователю интерактивное меню с выбором действий"
echo ""

}
