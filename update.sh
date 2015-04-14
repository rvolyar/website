#!/bin/bash

# THIS FILE UPDATES FORKS TO THE LATEST VERSION OF THE ORIGINAL REPOSITORY
# USE THIS COMMAND TO RUN THIS FILE:
# bash update.sh

echo "Updating local develop branch";

# refer to the original repository NOT the fork
owner="Charles-T-King";
repository="website";

# make sure the upstream (original) repo is added
if ! git remote | grep upstream > /dev/null; then
    git remote add upstream git://github.com/$owner/$repository.git
    git remote set-url upstream git://github.com/$owner/$repository.git
fi
# update the local copy of the fork
git fetch upstream # download upstream w/o changing anything
git rebase upstream/develop # rebase is safer and cleaner than merge

echo "Your fork is now synced with the upstream fork."
