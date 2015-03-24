## Laravel PHP Framework for CTK

```
composer create-project laravel/laravel ./laravel --prefer-dist
shopt -s dotglob
mv laravel/* ./
rm -rf laravel

```

```
sudo vi /etc/apache2/sites-enabled/001-cloud9.conf

// Change this line
DocumentRoot /home/ubuntu/workspace

// To following
DocumentRoot /home/ubuntu/workspace/public

```