#!/bin/sh

VOLUME_HOME="/var/lib/mysql"

if [[ ! -d $VOLUME_HOME/mysql ]]; then
    echo "=> An empty or uninitialized MariaDB volume is detected in $VOLUME_HOME"
    echo "=> Installing MariaDB ..."
    mysql_install_db --user=mysql> /dev/null 2>&1
    echo "=> Done!" 
else
    echo "=> Using an existing volume of MariaDB"
fi

exec mysqld --user=mysql --console