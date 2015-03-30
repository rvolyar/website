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
	# there is no password because no one else can use the database
	
	touch .env; # make an empty file
	
	# this StackOverflow thread explains what is happening: http://goo.gl/Gf9L8Q
	printf "%s\n" "
	APP_ENV=local
	APP_DEBUG=true
	APP_KEY=SomeRandomString
	
	DB_HOST: 127.0.0.1
	DB_DATABASE= c9
	DB_USERNAME=$C9_USER
	DB_PASSWORD=
	
	CACHE_DRIVER=file
	SESSION_DRIVER=file
	QUEUE_DRIVER=sync
	
	MAIL_DRIVER=smtp
	MAIL_HOST=mailtrap.io
	MAIL_PORT=2525
	MAIL_USERNAME=null
	MAIL_PASSWORD=null
	" >> .env;
	
# let MySQL set itself up automatically
	$delay = 3; # in seconds, how long to let MySQL set up everything
	mysql-ctl start;
	sleep $delay; # give it some time
	mysql-ctl stop;

echo "Setup process COMPLETE";
