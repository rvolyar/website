### What is Charles T. King, anyway?
Charles T. King is an organization located in Millburn, New Jersey that gives interest-free student loans to local high school students. It was named after a former superintendent of the Millburn Public School District. Because Charles T. King does not have a website yet, we are making one for them. This is the repository for said website.

Directions for Editing the Code
-------------------------------
We use the [Fork and Pull Model](https://help.github.com/articles/using-pull-requests/). I know what you're thinking- let me explain. First, let's look at the simplest possible method: the Shared Repository model.

### Shared Repository
In this model, everyone makes a change on their local machine and then pushes the changes to a single repository. This model has several benefits:
* Faster because it just has 1 repository
* Easier to keep track of 1 repository if there are only a few people making changes

However, it is not good to push directly to the central repository because:
* It might conflict with someone else's change, resulting in a merge conflict
* The changes aren't looked over by others, so it might break something or be bad
* It requires that you have push access to the repository
	* This point is mostly moot for us because everyone has push access, but it's good to know anyway.
That is why we are using the Fork and Pull model.

### Fork and Pull model
The [Charles T. King' repository](https://github.com/Charles-T-King/website) is the central repository, meaning that everyone makes changes ultimately to it. However, we don't push directly to the central repository. Let's look at an example situation in which Luke has to fix something in the code:
1. Luke forks the central repository
2. Luke makes changes to his fork
3. Luke then makes a pull request
	a. If everyone likes it, then they can accept the request and pull the changes to the central repo
	b. If they don't like it, Luke improves his fork and then makes another request.

Now, let's see how to do this on the GitHub website.
#### How to Fork a Repository
1. Open the repository
2. Click the Fork button on the top-right
3. Select your own account because you are forking a version for yourself
You now have a forked repository. You can safely make changes to it without affecting the central repository.

After you have made changes to your forked repository, make a pull request.
#### How to Make a Pull Request
1. Open the 'Pull requests' tab on the GitHub sidebar
2. Click 'New pull request'
3. By default, you should make the pull request to the same branch that you forked from
4. Add a description to your pull request
5. Submit the pull request and hope that everyone likes it

Now, lets see how to accept the pull request if they end up liking it.
#### How to Accept a Pull Request
1. Open the 'Pull request' tab on the central repository
2. Open the appropriate pull request
3. The 'Files changed' tab on the top of the pull request shows what changes have been made, so look at that
4. If you like the changes, go to the Conversation tab and click the 'Merge pull request' at the bottom of the thread
5. If you don't like the changes, comment what you don't like about it.
6. After you are done with a pull request, make sure to close the pull request

[Meetings with Conor/Charles T. King](https://drive.google.com/open?id=0BxEuMs2jIxWfV0VNQ1ZzZFJpUkU&authuser=0)

### How to setup cloud9 with this project
1. Open [your Dashboard](https://c9.io/dashboard.html)
2. Select 'CREATE NEW WORKSPACE' and then 'Clone from URL'
3. If you are just practicing, fork this repo and for the Source URL, use your forked repo's url.  If you are contributing to the acual site, us this repo's URL: http://github.com/Charles-T-King/website
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

##### Here are the default cloud9 credentials to connect MySQL:
* DB_HOST: 127.0.0.1
* DB_DATABASE= c9
* DB_USERNAME='your c9 username'
* DB_PASSWORD='blank'

After this, open the file public/index.php and click the green run button to proceed to run this app as a PHP/Apache server.  Open the url given to you by the server terminal. Remember there's a difference between the Apache terminal and the bash terminal.

You should get a message in the browser saying "conncted sucessfully to database named c9".  If you get the message, you are all setup.  If that does not occur, check your steps and troubleshoot. If you still need help, post and issue and we'll help you.

Remember to always work on the develop branch as master is production ready code.

You now have this repo cloned to your c9 account.Further instruction will be given on how to contribute.

### Read up on these resources on how to use git effectively.

[Tutorial by Atlassian, GitHub's main competitor](https://www.atlassian.com/git/tutorials/)
[Interactive Tutorial by Github](https://try.github.io/levels/1/challenges/1) - Sign in at first to track progress.
