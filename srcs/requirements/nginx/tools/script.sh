mkdir /etc/nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $CERTS_PRIV -out $CERTS_ -subj "/C=MA/ST=IDF/L=Benguerir/O=42/OU=42/CN=$DOMAIN_NAME/UID=rlarabi"

sed -i "s|server_name PATH_OF_DOMAIN_NAME;|server_name $DOMAIN_NAME;|" /etc/nginx/sites-enabled/nginx.conf
sed -i "s|ssl_certificate PATH_OF_CERTS_;|ssl_certificate $CERTS_;|" /etc/nginx/sites-enabled/nginx.conf
sed -i "s|ssl_certificate_key PATH_OF_CERTS_PRIV;|ssl_certificate_key $CERTS_PRIV;|" /etc/nginx/sites-enabled/nginx.conf

exec nginx -g "daemon off;"