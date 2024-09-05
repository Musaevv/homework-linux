#!/bin/bash
#
#
#update system
sudo yum update -y

#install apache
sudo yum install httpd -y

#install packages
sudo dnf install wget php-mysqlnd httpd php-fpm php-mysqli mariadb105-server php-json php php-devel -y

#install wordpress

wget https://wordpress.org/latest.tar.gz

#unarchive
tar -xzf latest.tar.gz

#some stuff

sudo cp -r wordpress/* /var/www/html/


sudo chown -R apache:apache /var/www/html/

sudo systemctl start httpd

sudo systemctl enable httpd

sudo systemctl restart httpd


