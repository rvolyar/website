## Laravel PHP Framework for CTK


[Meetings with Conor/Charles T. King](https://drive.google.com/open?id=0BxEuMs2jIxWfV0VNQ1ZzZFJpUkU&authuser=0)

The following commands are just for reference in the future. Ignore for now.
```
composer create-project laravel/laravel ./laravel --prefer-dist
shopt -s dotglob
mv laravel/* ./
rm -rf laravel
=======
### How to setup cloud9 with this project
1. Open [your Dashboard](https://c9.io/dashboard.html)
2. Select 'CREATE NEW WORKSPACE' and then 'Clone from URL'
3. For the Source URL, use this repo's URL: http://github.com/Charles-T-King/website
4. Make sure to select PHP workspace
5. Enter the following commands via the terminal on the bottom of your screen.


``` shell


# Edit the server config file.
sudo nano /etc/apache2/sites-enabled/001-cloud9.conf
# Change this line
DocumentRoot /home/ubuntu/workspace
# To the following. This tells the server where to find our public folder.
DocumentRoot /home/ubuntu/workspace/public
# To save the file, "Ctrl + X", then "y" for yes and "enter"

# Update composer, our 3rd party dependency manager.  Sudo is used for temporary root access.
sudo composer self-update

# Install all 3rd party dependencies needed for the project via composer. 
composer install
```

To use the database(MySQL), we need to setup your database connections. Make a .env file in your root directory.
Define all the databse variables as listed in the .env.example file.  We use this as we do not share the same passwords and it is easier to collaborate.  The .env file is gitignored and does not get pushed to git so your passwords are safe to your local environment.

##### Here are the default cloud9 credentials:
* DB_HOST: 127.0.0.1
* DB_DATABASE= c9
* DB_USERNAME='your c9 username'
* DB_PASSWORD='blank'

After this, open the file public/index.php and click the green run button to proceed to run this app as a PHP/Apache server.  Open the url given to you by the server terminal. Remember there's a difference between the Apache terminal and the bash terminal.

You should get a message in the browser saying "conncted sucessfully to database named c9".  If you get the message, you are all setup.  If that does not occur, check your steps and troubleshoot. If you still need help, post and issue and we'll help you.

You now have this repo cloned to your c9 account.Further instruction will be given on how to contribute.

### Read up on these resources on how to use git effectively.

[Tutorial by Atlassian, GitHub's main competitor](https://www.atlassian.com/git/tutorials/)
[Interactive Tutorial by Github](https://try.github.io/levels/1/challenges/1) - Sign in at first to track progress.
