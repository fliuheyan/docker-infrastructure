#!/bin/bash
set -ex

# Start the MySQL daemon in the background.
/usr/sbin/mysqld &
mysql_pid=$!

until mysqladmin ping &>/dev/null; do
  echo -n "waiting mysql start";
  sleep 3
done

# Permit root login without password from outside container.
mysql -e "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION"

## Tell the MySQL daemon to shutdown.
#mysqladmin shutdown
#
## Wait for the MySQL daemon to exit.
#wait $mysql_pid

/usr/sbin/mysqld
#until nc -z -v -w30 $CFG_MYSQL_HOST 3306
#do
#  echo "Waiting for database connection..."
#  # wait for 5 seconds before check again
#  sleep 5
#done


