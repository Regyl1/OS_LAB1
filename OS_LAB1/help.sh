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
echo "Все аргументы вводятся по одному"
echo
echo "Коды ошибок:"
echo
echo "ERROR 1:Аргументы должны быть целыми числами"
echo "ERROR 2:Невозможное действие: Деление на ноль"
echo "ERROR 3:Неправильное математическое действие"
echo "ERROR 4:Неправильно введена команда"
echo "ERROR 5:Неправильное кол-ва аргументов"
echo "ERROR 6:Искомый файл не найден или не существует"
echo "ERROR 7:Недостаточно прав для исполнения скрипта"
echo "ERROR 8:Недостаточно прав для чтения файла"
echo "ERROR 9:Недостаточно прав для записи файла"
echo "ERROR 10:Файл скрипта не найден или не существует"
}
