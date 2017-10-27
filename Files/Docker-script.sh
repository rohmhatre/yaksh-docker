#!/bin/bash 
PROJECT_DIR=/Sites/online_test
touch $PROJECT_DIR/online_test/local.py 
touch $PROJECT_DIR/yaksh/local.py 
>$PROJECT_DIR/online_test/local.py
>$PROJECT_DIR/yaksh/local.py
if [ ! -z $DB_NAME ]; then  sed -i '/DB_NAME/d' $PROJECT_DIR/online_test/local.py && echo "DB_NAME=\"$DB_NAME\"" >> $PROJECT_DIR/online_test/local.py; fi

if [ ! -z $DB_USER ]; then  sed -i '/DB_USER/d' $PROJECT_DIR/online_test/local.py && echo "DB_USER=\"$DB_USER\"" >> $PROJECT_DIR/online_test/local.py; fi

if [ ! -z $DB_PASS ]; then  sed -i '/DB_PASS/d' $PROJECT_DIR/online_test/local.py && echo "DB_PASS=\"$DB_PASS\"" >> $PROJECT_DIR/online_test/local.py ;fi

if [ ! -z $DB_HOST ]; then  sed -i '/DB_HOST/d' $PROJECT_DIR/online_test/local.py && echo "DB_HOST=\"$DB_HOST\"" >> $PROJECT_DIR/online_test/local.py; fi

if [ ! -z $DB_PORT ]; then  sed -i '/DB_PORT/d' $PROJECT_DIR/online_test/local.py && echo "DB_PORT="$DB_PORT >> $PROJECT_DIR/online_test/local.py; fi

if [ ! -z $CODE_SERVER_HOST ]; then  sed -i '/CODE_SERVER_HOST/d' $PROJECT_DIR/yaksh/local.py && echo "CODE_SERVER_HOST=\"$CODE_SERVER_HOST\"" >> $PROJECT_DIR/yaksh/local.py; fi

/usr/sbin/apache2ctl -D FOREGROUND
