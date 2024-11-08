#!/bin/bash
if [[ -d /etc/nginx ]]
then
	echo "nginx already installed"
	else
		echo -e "\033[0;33m installing nginx"
		sudo apt update -y
		sleep 5
		sudo apt install nginx -y
		sleep 5
		systemctl enable nginx
		systemctl start nginx
		echo "hello world from $(hostname -f)" > /var/www/html/index.html
fi
if [[ $? -eq 0 ]]
then
	echo "nginx successfully installed"
else
	echo "nginx installation failed"
fi

