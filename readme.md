## Laravel PHP Framework for CTK

### How to setup cloud9 with this project
1. Open [your Dashboard](https://c9.io/dashboard.html)
2. Select 'CREATE NEW WORKSPACE' and then 'Clone from URL'
3. For the Source URL, use this repo's URL: http://github.com/Charles-T-King/website
4. Make sure to select PHP workspace

``` shell
shopt -s dotglob
mv laravel/* ./
rm -rf laravel

// Edit the server config file
sudo nano /etc/apache2/sites-enabled/001-cloud9.conf

// Change this line
DocumentRoot /home/ubuntu/workspace

// To the following. This tells the server where our public folder is.
DocumentRoot /home/ubuntu/workspace/public

//Install all 3rd party dependencies needed for the project. 
composer install
```

To use the database(MySQL), we need to setup your database connections. Make a .env file in your root directory.
Define all the databse variables as listed in the .env.example file.  We use this as we do not share the same passwords and it is easier to collaborate.  The .env file is gitignored and does not get pushed to git so your passwords are safe to your local environment.
Here are the default cloud9 credentials:
DB_HOST: 127.0.0.1

DB_DATABASE= c9

DB_USERNAME='your c9 username'

DB_PASSWORD='blank'


After this, proceed to run this app as a PHP/Apache server and open the url given to you by the server terminal.

You now have this repo cloned to your c9 account.Further instruction will be given on how to contribute.

# Read up on these resources on how to use git effectively.

https://www.atlassian.com/git/tutorials/
[Interactive git tutorial by github](https://try.github.io/levels/1/challenges/1) - Sign in first to track progress
