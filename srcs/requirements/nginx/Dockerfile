FROM debian:bookworm

RUN apt update && \
    apt upgrade -y && \
    apt install nginx openssl -y

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/nginx.conf

EXPOSE 443

RUN mkdir /etc/nginx/ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/privkey.pem -out /etc/nginx/ssl/fullchain.pem -subj "/C=MA/ST=IDF/L=Benguerir/O=42/OU=42/CN=rlarabi.42.fr/UID=rlarabi"

CMD [ "nginx", "-g", "daemon off;" ]