Пример проектирования базы данных PostgreSQL
============================================

В данном репозитории приведен пример разработки базы данных на примере PostgreSQL. Идея заключается 
в активном использовании Docker.

Файл `docker-compose-test0.yaml` это пример запуска сервера PostgreSQL и клиентской программы PgAdmin4.

Файл `docker-compose-test1.yaml` это пример запуска тестового сервера PostgreSQL с запуском SQL-скриптов.

Тестовая база данных
--------------------

Запуск тестовой базы:

```shell
docker compose -f docker-compose-test1.yaml up -d
```

Полезные ссылки
---------------

Запускаем PostgreSQL в Docker: от простого к сложному
https://habr.com/ru/articles/578744/

Initialize Postgres db in Docker Compose
https://stackoverflow.com/questions/56643961/initialize-postgres-db-in-docker-compose

Справка
-------

Псевдотип serial разворачивается во что-то типа id integer not null default nextval('tbl_id_seq').
Запоминать имя автоматически сгенерированной и привязанной к полю последовательности — не надо, 
для этого есть функция select pg_get_serial_sequence('tutors', 'id')
