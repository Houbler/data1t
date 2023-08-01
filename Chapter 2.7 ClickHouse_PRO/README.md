## Задание:
Скрипт миграции витрины данных из СУБД Postgres в СУБД Clickhouse

Цель задания: Написать скрипт миграции, который позволит перенести уже собранную витрину данных из СУБД Postgres в СУБД Clickhouse, основываясь на задании 2.5.

Этот проект состоит из:
 - Docker-compose файла.
	[Docker](docker-compose.yml)
 - Sql-cкрипт для создания таблиц БД Postgres(DDL)
	[PSQL DDL](postgres/database/DDL/DDLscr.sql).
 - Sql-cкрипт для заполнения таблиц Postgres(DML).
	[PSQL DML](postgres/database/DML/DMLscr.sql).
 - Sql-cкрипт для миграции схемы в Clickhouse.
	[Clickhouse SQL](clickhouse/scheme.sql)
 - Sql-cкрипт для просмотра витрины в Clickhouse.
	[Clickhouse Datamart](clickhouse/datamart.sql)
	
Последний скрипт можно ввести вручную, например, с использованием DBeaver.
Данные для входа Postgres database:
 Database - db 
 User - user
 Password - secret
 
 Данные для входа Clickhouse database:
 User - default