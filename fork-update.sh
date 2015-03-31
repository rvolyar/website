#!/bin/bash

# THIS FILE UPDATES FORKS TO THE LATEST VERSION OF THE ORIGINAL REPOSITORY
# USE THIS COMMAND TO RUN THIS FILE:
# bash fork-update.sh develop

if [ "$1" == " " ]; then # if the first argument does not exist
	branch="develop";
else
	branch=$1;
fi

echo "Updating $branch branch";

# set up the variables
owner="Charles-T-King";
repository="website";

# avoid losing your work if there are conflicts
git add *; # add all the files
git stash; # avoid losing your work

git remote add upstream git://github.com/$owner/$repository.git
git remote set-url upstream git://github.com/$owner/$repository.git
git fetch upstream
git checkout $branch
git merge upstream/$branch -m "Updated fork by adding the original's changes"

echo "Please commit the changes if you are satisfied"
echo "To undo the changes made, please type in: git stash pop"
