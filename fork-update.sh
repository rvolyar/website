#!/bin/bash

# THIS FILE UPDATES FORKS TO THE LATEST VERSION OF THE ORIGINAL REPOSITORY
# USE THIS COMMAND TO RUN THIS FILE:
# bash fork-update.sh

if [ -n "$1" ]; then # if the first argument does not exist
	$branch = "develop";
else
	$branch = $1;
fi

echo "Updating $branch branch";

# set up the variables
$owner = "Charles-T-King";
$repo = "website";

git checkout $branch
git pull https://github.com/$owner/$repo.git $branch

echo "Please commit the changes if you are satisfied"
