FROM ubuntu:latest

LABEL "project"="bms"
LABEL "author"="shrinath"

RUN apt update
RUN apt install apache2 -y

CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]

EXPOSE 80

WORKDIR /var/www/html
VOLUME /var/log/apache2

ADD dox.tar.gz /var/www/html
