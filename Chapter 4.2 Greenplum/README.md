# Изучение Greenplum.
### Задание:
```
Дело зашло слишком далеко — ваши таблички с курсами валют обвалили базу! На собрании по разбору полетов вы мужественно взяли на себя ответственность за случившееся, и за такой смелый поступок на вас взвалили задачу по переносу уже старенькой базы Postgres на новенький кластер Greenplum. 
Первым делом Greenplum надо «поднять» — для этого у вас есть два пути:
 - Обратиться к devOps-инженеру, который думает наперед и уже подготовил для вас тестовый кластер с GP. Подключиться можно с помощью dBeaver (выбрать тип соединения Postgres) или аналогов.
 - Самостоятельно развернуть официальный образ GreenPlum, который доступен из официальной документации.
 
GP — в отличии от Postgres — распределенная система хранения данных. Поэтому ключевое, чему надо научиться — правильно распределять данные по узлам кластера. Создайте таблицу-фактов о продажах произвольных товаров. При создании таблицы укажите поле для разделения таблицы по сегментам. Учитывайте, что правильные сегменты должны быть одинакового размера и не иметь пустых записей. Также при создании таблицы выберите поле для партиционирования. Лучшее поле для создания партиции — поле с единицей времени (год, месяц, день и т.д.).

Создайте таблицу-измерение, в которой отражены стоимость и название товара, а также связь с таблицей-фактов из предыдущего шага.

Заполните таблицы минимальными данными. Включите оптимизатор GP. 

Напишите запрос, который рассчитывает сумму продаж определенного товара за определенную единицу времени. 

Напечатайте план предыдущего запроса. 

В качестве результата необходимо предоставить код всех запросов и план последнего запроса.
```

Для поднятия Greenplum использовался образ с [Dockerhub](https://hub.docker.com/r/andruche/greenplum).

Запуск: 
```
docker pull andruche/greenplum
docker run --name greenplum -p 5432:5432 -d andruche/greenplum:7.0.0
```

Далее подключаемся к базе. User - gpadmin, database - postgres.

### Результат
[SQL-файл](scripts.sql) со всеми запросами, необходимыми для задания.
[ER-диаграмма](images/1.png) с партициями. 
[Запрос](images/2.png) на расчет суммы продаж определенных товаров за месяц.
[План](_EXPLAIN_SELECT_.txt) предыдущего запроса
