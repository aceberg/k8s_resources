#!/bin/bash

DBUSER="root"
DBPASS="qwerty"
DBHOST="mysql"
DBNAME="hometask"

mysql -h $DBHOST -u $DBUSER -p$DBPASS --execute="CREATE DATABASE IF NOT EXISTS $DBNAME;"

mysql -h $DBHOST -u $DBUSER -p$DBPASS $DBNAME < articles.sql
