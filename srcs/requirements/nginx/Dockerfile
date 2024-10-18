FROM debian:bookworm

RUN apt update && \
    apt upgrade -y && \
    apt install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/nginx.conf

EXPOSE 443

CMD [ "nginx", "-g", "daemon off;" ]