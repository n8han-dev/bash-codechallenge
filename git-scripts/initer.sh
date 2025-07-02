#!/usr/bin/bash

# this script will take a repo url as a first (named?) parameter and run through the steps to initialize and push the directory to the remote repo.
# base functions:
# init repo, check if empty, create readme, set def branch to main, check email is configured, check authentication, commit, push & set upstream.
# possible functions: 
# set the default branch to main, with the ability to set it via a named parameter.
# create a readme if there isn't one already
# set the remote upstream branch
# add submodules provided via parameters or file to the repo
# add the identityfile to the ssh config

# vars
remote=$1
def_branch_name="main"
dir_contents=$(ls)

# base

echo "working in"
pwd
echo "initializing remote repository for $remote"
# git init
if [[ -z $dir_contents ]]; then
    echo "empty repository. creating Readme"
fi