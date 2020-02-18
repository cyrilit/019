FROM --platform=linux/amd64 ubuntu:latest

ENV MYSQL_ROOT_PASSWORD rootwordpress
ENV MYSQL_DATABASE wordpress
ENV MYSQL_USER wp
ENV MYSQL_PASSWORD wordpress
ENV DEBIAN_FRONTEND noninteractive

#Update Ubuntu
RUN apt-get update && apt-get install -y mysql-server

RUN usermod -d /var/lib/mysql/ mysql
RUN service mysql start 

EXPOSE 3306

CMD ["mysqld"]