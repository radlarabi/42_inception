# mkdir /etc/nginx/ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERTS_PRIV -out $CERTS_ -subj "/C=MA/ST=IDF/L=Benguerir/O=42/OU=42/CN=rlarabi.42.fr/UID=rlarabi"

# sleep 1

# sed -e "s/ssl_certificate \/etc\/nginx\/ssl\/fullchain.pem;/ssl_certificate $CERTS_;/" /etc/nginx/sites-enabled/nginx.conf
# sed -e "s/ssl_certificate_key \/etc\/nginx\/ssl\/privkey.pem;/ssl_certificate_key $CERTS_PRIV;/" /etc/nginx/sites-enabled/nginx.conf


# mkdir /etc/nginx/ssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERTS_PRIV -out /etc/nginx/ssl/fullchain.pem -subj "/C=MA/ST=IDF/L=Benguerir/O=42/OU=42/CN=rlarabi.42.fr/UID=rlarabi"

# sleep 1

# sed -e "s/ssl_certificate \/etc\/nginx\/ssl\/fullchain.pem;/ssl_certificate $CERTS_;/" /etc/nginx/sites-enabled/nginx.conf
# sed -e "s/ssl_certificate_key \/etc\/nginx\/ssl\/privkey.pem;/ssl_certificate_key $CERTS_PRIV;/" /etc/nginx/sites-enabled/nginx.conf