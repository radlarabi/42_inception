# #!/bin/sh

# echo "Starting MariaDB server..."
# service mariadb start

# # Give MariaDB some time to fully start
# sleep 2

# echo "Creating the 'wordpress' database if it doesn't exist..."
# mysql -e "CREATE DATABASE IF NOT EXISTS wordpress;"

# echo "Creating the user 'rlarabi' with access from any host..."
# mysql -e "CREATE USER IF NOT EXISTS 'rlarabi'@'%' IDENTIFIED BY '1234';"

# echo "Granting privileges to 'rlarabi' on the 'wordpress' database..."
# mysql -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'rlarabi'@'%';"

# echo "Flushing privileges to apply changes..."
# mysql -e "FLUSH PRIVILEGES;"

# echo "Stopping MariaDB server..."
# service mariadb stop

# # Give MariaDB some time to fully stop
# sleep 2

# echo "Starting MariaDB in safe mode..."
# exec mysqld_safe

service mariadb start;
sleep 2

mysql  -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;";

# mysql  -e "CREATE USER IF NOT EXISTS '$MYSQL_ROOT_USER'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';";

mysql  -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';";

mysql  -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';";

mysql  -e "FLUSH PRIVILEGES;";

service mariadb stop;
sleep 2

echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';""GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';"
echo "finish"


exec mysqld_safe ;