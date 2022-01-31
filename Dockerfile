FROM debian:bullseye
MAINTAINER Daniel Parrales García "daniparrales16@gmail.com"
RUN apt update && apt upgrade -y && apt install apache2 libapache2-mod-php php php-mysql mariadb-client -y
ADD bookmedik /var/www/html/
RUN chmod +x /var/www/html/script.sh && rm /var/www/html/index.html
ENTRYPOINT ["/var/www/html/script.sh"]
