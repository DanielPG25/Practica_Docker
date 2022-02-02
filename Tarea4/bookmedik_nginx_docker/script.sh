#! /bin/sh

sleep 10

mysql -u $USUARIO_BOOKMEDIK --password=$CONTRA_BOOKMEDIK -h $DATABASE_HOST $NOMBRE_DB < /usr/share/nginx/html/schema.sql

nginx -g "daemon off;"


