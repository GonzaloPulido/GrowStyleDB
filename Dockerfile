FROM mariadb:latest

COPY myDatabaseConf.cnf /etc/mysql/conf.d/myDatabaseConf.cnf

COPY backup.sql /docker-entrypoint-initdb.d/backup.sql

ENV MYSQL_PORT=3306

EXPOSE 3007