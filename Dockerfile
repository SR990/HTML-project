FROM ubuntu
MAINTAINER "Samson"
RUN apt update
RUN apt install apache2 -y
# Installing apache2
#RUN echo "ServerName 44.223.10.203" >> /etc/apache2/apache2.conf
COPY ./* /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
