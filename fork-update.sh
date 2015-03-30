#!/bin/bash

# THIS FILE UPDATES FORKS TO THE LATEST VERSION OF THE ORIGINAL REPOSITORY
# USE THIS COMMAND TO RUN THIS FILE:
# ./fork-update.sh develop

if [ "$1" == " " ]; then # if the first argument does not exist
	$branch = "develop";
else
	$branch = $1;
fi

echo "Updating $branch branch";

# set up the variables
$owner = "Charles-T-King";
$repo = "website";

git remote add upstream https://github.com/whoever/whatever.git
git fetch upstream
git checkout $branch
git rebase upstream/$branch

echo "Please commit the changes if you are satisfied"
