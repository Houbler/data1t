## Задание:
## 1) Добавить недостающую связующую таблицу.
## 2) Собрать первую витрину с атрибутами:
 - shop_name — название магазина,
 - product_name — название товара,
 - sales_fact — количество фактических продаж на конец месяца,
 - sales_plan — количество запланированных продаж на конец месяца,
 - sales_fact/sales_plan — отношение количества фактических продаже к запланированному,
 - income_fact — фактический доход,
 - income_plan — планируемый доход,
 - income_fact/income_plan — отношение фактического дохода к запланированному.

Этот проект состоит из:
 - Графическая структура файла БД.
	[Диаграмма](diagram.jpg)
 - Sql-cкрипт для создания таблиц БД (DDL)
	[DDL](database/DDL/DDL.sql).
 - Sql-cкрипт для заполнения таблиц (DML).
	[DML](database/DML/DML.sql).
 - Файл docker-compose.
	[Docker](docker-compose.yml)
 - Файл со скриптами SQL для построения витрины.
	[SQL-запрос](SQL_Script.sql)
 
 Данные для поднятия docker-compose:
 
 Database - db 
 
 User - user
 
 Password - secret