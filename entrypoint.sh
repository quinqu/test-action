#!/bin/bash

echo "hello world!"
env
# echo $GITHUB_EVENT

go run /main.go

cd $RUNNER_WORKSPACE

git fetch 

git status