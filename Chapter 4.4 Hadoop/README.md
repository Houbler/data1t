# Изучение Hadoop.
### Задание:
```
Что может быть прекраснее летнего корпоратива? Особенно если корпоратив пройдет в Таиланде! Да-да, отчетный период показал очень хорошую прибыль вашей компании — и не без вашего участия! Чтобы поощрить за труд и терпение, ваш начальник решил организовать корпоратив прямо на островах. По приезду на место первое, что попало на глаза вам и вашим коллегам, — это цирковое шоу слонов. Зрелище было замечательным, у вас возникла невольная ассоциация и вы воскликнули: «О, оживший Hadoop!». Что же, инициатива, как говорится, ложится на плечи инициатора. Теперь ваш начальник под двойным впечатлением поставил вам первоочередную задачу после отпуска — завести hadoop для задач вашей компании. 
Беремся за дело — и уже по традиции ищем нужный образ docker. Находим его [здесь](https://github.com/tech4242/docker-hadoop-hive-parquet/tree/master).

```
В качестве результатов вашей работы запишите ваши команды и вывод этих команд в
отдельный файл.

### Запуск

 - git clone https://github.com/tech4242/docker-hadoop-hive-parquet.git (в заранее созданной папке)
 - Открываем консоль, переходим в папку, где расположен файл.
 - Вводим: docker-compose up
 
 Как только образ собран, а контейнер поднят — заходим по http://localhost:8888/hue и попадаем в HUE. Придумываем произвольную пару логина-пароля для будущей авторизации и приступаем к работе. 
 
### Результат

 - На время забываем про hue и вспоминаем уроки литературы — переходим на следующий ресурс и скачиваем все доступные тома произведения «Война и мир» Л.Н. Толстого: Лев Николаевич Толстой - Информация об авторе, биография, дата и место рождения, род деятельности, награды и премии, годы творчества.
Скачиваем 4 тома в .doc формате. 
 
 - Далее подключаемся к контейнеру «datanode-1», создаем внутри папку и переносим в нее скачанные файлы.
Вводим ```docker ps``` чтобы посмотреть id контейнера с названием datanode-1. 
Далее ```docker exec -it <container_name_or_id> /bin/bash```.
Создаем директорию внутри контейнера: ```mkdir /usr/data```.
Выходим из контейнера: ```exit```.
Перемещаем туда скачанные файлы: ```docker /path/to/source_files/ <container_name_or_id>:/usr/data```.
 
 - Файлы предварительно «схлопываем» в один.
```cat voyna-i-mir-tom-1.doc voyna-i-mir-tom-2.doc voyna-i-mir-tom-3.doc voyna-i-mir-tom-4.doc > all-toms.doc```

 - Загружаем полученный файл на hdfs в вашу личную папку.
Создаем папку в hadoop со своим именем:```hadoop fs -mkdir /user/admin```.
Загружаем файл:```hadoop fs -put /path/to/all-toms.doc /user/admin/```.

 - Если все пройдет удачно, то по возвращению в hue вас ждет сюрприз: вы увидите полное произведение «Война и мир» на hdfs (не забудьте обновить страницу). На самом деле интерфейс HUE поддерживает возможность переноса небольших(!) файлов с помощью drag&drop — но для нас это слишком просто.
 
 - Возвращаемся в терминал и продолжаем изучать hdfs — попробуйте выполнить команду, которая выводит содержимое  вашей личной папки. Обратите внимание на права доступа к вашим файлам — их явно недостаточно, если вы решите поделиться столь важной книгой с вашим коллегой — давайте изменим права доступа к нашему файлу. Установите режим доступа, который дает полный доступ для владельца файла, а для сторонних пользователей возможность читать и выполнять.
Просмотр содержимого папки: ```hadoop fs -ls /usr/admin/```.
Изменение прав доступа: ```hadoop fs -chmod 755 /usr/admin```.
  
 - Попробуйте заново использовать команду для вывода содержимого папки и обратите внимание как изменились права доступа к файлу.
Просмотр содержимого папки: ```hadoop fs -ls /usr/admin/```.
  
 - Теперь попробуем вывести на экран информацию о том, сколько места на дискеnзанимает наш файл. Желательно, чтобы размер файла был удобочитаемым.
Размер файла в удобочитаемом виде ```hadoop fs -du -h /user/admin/all-toms.doc```.
Количество репликаций: ```hadoop fs -stat "%r" /user/admin/all-toms.doc```.

 - На экране вы можете заметить 2 числа. Первое число — это фактический размер файла, а второе — это занимаемое файлом место на диске с учетом репликации — измените фактор репликации на 2.
Меняем число репликаций: ```hadoop fs -setrep -w 2 /user/admin/all-toms.doc```.

 - Повторите команду, которая выводит информацию о том, какое место на дискезанимает файл и убедитесь, что изменения произошли.
Проверяем: ```hadoop fs -stat "%r" /user/admin/all-toms.doc```.

 - И финальное — напишите команду, которая подсчитывает количество строк в произведении «Война и мир».
Подсчитываем строки: ```hadoop fs -cat /user/admin/all-toms.doc | wc -l```.