FROM debian:bullseye
MAINTAINER Daniel Parrales García "daniparrales16@gmail.com"
RUN apt update && apt upgrade -y && apt install apache2 libapache2-mod-php php php-mysql -y

