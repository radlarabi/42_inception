FROM debian:bookworm

RUN apt update && \
    apt upgrade -y && \
    apt install mariadb-server -y

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/init_db.sh .

RUN chmod +x init_db.sh

EXPOSE 3306

CMD [ "/bin/sh", "init_db.sh"]