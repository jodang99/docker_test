FROM centos
MAINTAINER bak.jung sksmssk@gmail.com

CMD echo "now running...."

RUN yum update
RUN yum install -y httpd
ADD ./index.html /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
