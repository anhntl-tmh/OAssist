##
FROM centos:7

##
MAINTAINER minh-tq@tmh-techlab.vn

## Centos base
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

# yum updates
RUN yum -y update &&  yum -y clean all

# timezone and locale
RUN yum -y reinstall glibc-common &&  yum -y clean all
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime

# basic utilities
RUN yum -y install git zip unzip vim sudo && yum -y clean all

# PHP 7.0 rpm
RUN yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# HTTPD
RUN yum -y install httpd httpd-devel

#------------------------------------------------------------
# MySQL
## Install
RUN yum install -y mysql mysql-server
## Configuration
RUN touch /etc/sysconfig/network

# PHP
RUN yum -y --enablerepo=remi-php71,epel,remi install php php-devel php-mysql php-mbstring php-pear php-opcache php-cli php-mcrypt \
    php-mysqlnd php-pdo php-fpm \
    && yum -y clean all

# update glibc
RUN yum -y update glibc && yum -y clean all

## COMMON Configuration
RUN chmod ugo+w /var/lib
RUN chmod -R 777 /var/tmp
COPY files/etc /etc

RUN systemctl enable httpd.service

EXPOSE 80

VOLUME [ "/sys/fs/cgroup", "/run", "/tmp" ]

CMD ["/usr/sbin/init"]