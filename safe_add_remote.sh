#!/bin/bash

# This script adds a remote to a local repo safely
# use like this 
# bash safe_add_remote.sh remote_alias https://user:token@example.com/repo.git

remote_alias=${1}
git_uri=${2}
git remote | grep -q -w ${remote_alias}
status=$?
if test $status -eq 0
then
    echo 'remote already exists'
    exit 0
else
    git remote add ${remote_alias} ${git_uri}
fi
