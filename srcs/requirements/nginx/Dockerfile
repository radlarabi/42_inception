FROM debian:bookworm

RUN apt update && \
    apt upgrade -y && \
    apt install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/nginx.conf

EXPOSE 443

COPY ./tools/script.sh script.sh

RUN chmod +x script.sh

CMD [ "/bin/sh", "script.sh" ]