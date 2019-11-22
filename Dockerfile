FROM ubuntu
RUN apt-get update
RUN apt-get -y install apache2
EXPOSE 80
VOLUME /var/www/html/
COPY ./index.html /var/www/html
CMD ["usr/sbin/apache2ctl", "-D", "FOREGROUND"]