#Database
FROM mariadb:latest

#COPY myDatabaseConf.cnf /etc/mysql/conf.d/myDatabaseConf.cnf

COPY backup.sql /docker-entrypoint-initdb.d/backup.sql

ENV MYSQL_PORT=3306
ENV MARIADB_ROOT_PASSWORD=growstyle1234
#ENV MARIADB_USER=admin
#ENV MARIADB_PASSWORD=growstyle1234

EXPOSE 3306