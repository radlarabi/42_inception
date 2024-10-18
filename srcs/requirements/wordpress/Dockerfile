FROM debian:bookworm

RUN apt update && \
    apt upgrade -y && \
    apt install -y wget mariadb-client php php-fpm php-mysql curl

RUN wget https://wordpress.org/wordpress-6.0.tar.gz -P /var/www

RUN tar -xf /var/www/wordpress-6.0.tar.gz -C /var/www/ && \
    rm -rf /var/www/wordpress-6.0.tar.gz && \
    cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php  

RUN echo "listen = 9000" >> /etc/php/8.2/fpm/pool.d/www.conf    

# COPY ./conf/def.conf /etc/php/8.2/fpm/pool.d/www.conf

RUN service php8.2-fpm start;
RUN service php8.2-fpm stop;

COPY ./tools/script.sh script.sh

RUN chmod +x script.sh

CMD [ "bash", "script.sh" ]