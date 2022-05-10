#!/bin/bash

DBUSER="hometask"
DBPASS="qwerty"
DBHOST="localhost"
DBNAME="hometask"


# mysql -h $DBHOST -u root -p$ROOTPW --execute="\
#             CREATE DATABASE IF NOT EXISTS $DBNAME;\
#             CREATE USER $DBUSER IDENTIFIED BY $DBPASS;\
#             GRANT ALL $DBNAME.* to $DBUSER;\
#             FLUSH PRIVILEGES;"

mysql -h $DBHOST -u $DBUSER -p$DBPASS $DBNAME < articles.sql
