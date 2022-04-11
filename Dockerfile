FROM ubuntu:16.04
MAINTAINER anil <anil@gmail.com>
LABEL appname="customercare"\
      appversion="1.0.0"
EXPOSE 80
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get clean

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY index.html /var/www/html/

CMD ["usr/sbin/apache2", "-D", "FOREGROUND"]
