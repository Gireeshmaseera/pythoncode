FROM mysql/mysql-server:5.7
EXPOSE 3306
ENV MSQL_USER =root
ENV MYSQL_ROOT_PASSWORD=flm123devops
COPY init.sql /docker-entrypoint-initdb.d

