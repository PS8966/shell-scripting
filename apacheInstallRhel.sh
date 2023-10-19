#!/bin/bash
sudo yum check-update
sudo yum update
# install httpd

sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd

# install firewalld
sudo yum install firewalld
sudo systemctl start firewalld
systemctl status firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https

sudo firewall-cmd --reload

echo Apache on RHEL 9 / CentOS 9 > /var/www/html/index.html
