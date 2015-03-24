## Laravel PHP Framework for CTK

The following commands are just for reference in the future. Ignore for now.
```
composer create-project laravel/laravel ./laravel --prefer-dist
shopt -s dotglob
mv laravel/* ./
rm -rf laravel

```

```
sudo nano /etc/apache2/sites-enabled/001-cloud9.conf

// Change this line
DocumentRoot /home/ubuntu/workspace

// To following
DocumentRoot /home/ubuntu/workspace/public

```

To setup your database connections, make a .env file in your root directory.
Define all the databse variables as listed in the .env.example file.  We use this as we do not share the same passwords and it is easier to collaborate.  The .env file does not get pushed to git so your passwords are safe to your local environment.
Here are the default cloud9 credentials:
DB_HOST: 127.0.0.1

DB_DATABASE= c9

DB_USERNAME='your c9 username'

DB_PASSWORD='blank'

