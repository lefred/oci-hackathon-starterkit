#!/bin/bash
#set -x

# Install MySQL Community Edition 8.0
rpm -ivh https://dev.mysql.com/get/mysql84-community-release-$(uname -r | sed 's/^.*\(el[0-9]\+\).*$/\1/')-2.noarch.rpm
yum install -y mysql-shell --enablerepo=mysql-tools-innovation-community


echo "MySQL Shell successfully installed !"

firewall-cmd --zone=public --permanent --add-port=80/tcp
firewall-cmd --zone=public --permanent --add-port=443/tcp
firewall-cmd --reload

chcon --type httpd_sys_rw_content_t /var/www/html
chcon --type httpd_sys_rw_content_t /var/www/html/*
setsebool -P httpd_can_network_connect_db 1
setsebool -P httpd_can_network_connect=1


echo "Local Security Granted !"


