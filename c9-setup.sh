#!/bin/bash

# THIS SCRIPT WILL SET UP APACHE2 SO THAT THE BACKEND WORKS
# TO RUN IT, USE THIS COMMAND:
# ./c9-setup.sh

# make Apache2 use the public folder as the website's root directory
	$fileDirectory = "/etc/apache2/sites-enabled/001-cloud9.conf";
	$original = "DocumentRoot /home/ubuntu/workspace";
	$corrected = "DocumentRoot /home/ubuntu/workspace/public";
	sed -i 's/$original/$corrected/g' $fileDirectory; # replace the text

# install the dependencies
	sudo composer self-update; # make sure that it's up-to-date
	composer install; # install all dependencies

# make an environment file to manage MySQL
	# $C9_USER is your Cloud9 username
	
	touch .env; # make an empty file
	echo "DB_HOST: 127.0.0.1" >> .env;
	echo "DB_DATABASE= c9" >> .env;
	echo "DB_USERNAME=$C9_USER" >> .env;
	echo "DB_PASSWORD=''" >> .env; # no password

# let MySQL set itself up automatically
	$delay = 3; # in seconds, how long to let MySQL set up everything
	mysql-ctl start;
	sleep $delay; # give it some time
	mysql-ctl stop;

echo "Setup process COMPLETE";
