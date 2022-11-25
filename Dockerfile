FROM centos:7
MAINTAINER hitechinstitution
RUN yum -y install httpd
COPY index.html /var/www/html/
CMD ["/usr/sbin/init", "-D", "FOREGROUND"]
CMD ["systemctl start httpd"]
CMD ["systemctl enable httpd"]
EXPOSE 80
