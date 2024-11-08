#!/bin/bash
if [[ -d /etc/mysql ]]
then
	echo "mysql already installed"
else
	echo -e "\033[0;32m installing mysql"
	sudo apt update -y
	sleep 3
	sudo apt install mysql-server -y
	sleep 3
	systemctl enable mysql
	systemctl start mysql
	systemctl status mysql > mysql.log
fi
echo -e "\033[0;33m exit code" $?
if [[ $? -eq 0 ]]
then
	echo "script successfull"
else
	echo "installation failed"
fi
