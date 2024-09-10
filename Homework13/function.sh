#!/bin/bash
#
#

create_users() {
    sudo useradd tim
    sudo useradd brad
    sudo useradd ann
    sudo mkdir -p kaizen
    sudo mkdir -p adil
    sudo touch hello
    sudo touch world
}

install_packages() {
    sudo yum install -y wget httpd tree git
}

echo "Choose function to run (create_users / install_packages): "
read function_name

if [ "$function_name" == "create_users" ]
then
	create_users
elif [ "$function_name" == "install_packages" ]
then
	install_packages
else
	echo "Invalid function name"

fi


