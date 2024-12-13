#!/bin/sh
sleep 2

sed -i "s/define( 'DB_NAME', 'database_name_here' );/define( 'DB_NAME', '$MYSQL_DATABASE' );/" /var/www/wordpress/wp-config.php;
sed -i "s/define( 'DB_USER', 'username_here' );/define( 'DB_USER', '$MYSQL_USER' );/" /var/www/wordpress/wp-config.php;
sed -i "s/define( 'DB_PASSWORD', 'password_here' );/define( 'DB_PASSWORD', '$MYSQL_PASSWORD' );/" /var/www/wordpress/wp-config.php;
sed -i "s/define( 'DB_HOST', 'localhost' );/define( 'DB_HOST', '$SQL_HOST' );/" /var/www/wordpress/wp-config.php;

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp

wp core is-installed --path="/var/www/wordpress" --allow-root

wp core install --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --path="/var/www/wordpress" --allow-root;
wp user create $WP_USER_USERNAME $WP_USER_EMAIL --role=subscriber --user_pass=$WP_USER_PASSWORD --path="/var/www/wordpress" --allow-root;

php-fpm8.2 -F;