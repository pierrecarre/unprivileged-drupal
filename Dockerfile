FROM drupal:8.2.6-apache
MAINTAINER pierre.carre78@gmail.com

RUN sed -i "s/\(Listen 80\)/\180/" /etc/apache2/ports.conf &&\
  sed -i "s/\(.*80\)/\180/" /etc/apache2/sites-enabled/000-default.conf

EXPOSE 8080
