#!/bin/bash

echo "hello world!"
env
# echo $GITHUB_EVENT

go run /main.go

cd $RUNNER_WORKSPACE
git config user.name github-actions
git config user.email github-actions@github.com
git fetch 
git commit -m "test" --allow-empty
git push 
git status