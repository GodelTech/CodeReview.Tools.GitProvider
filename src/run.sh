#!/bin/sh

if [ -n "$GIT_USE_BASIC" ]
then
unset GIT_ASKPASS
git -c http.extraHeader='Authorization: Basic '"$GIT_ACCESS_TOKEN"'' clone $GIT_REPOSITORY_URL /src && git switch $GIT_BRANCH
else
git clone $GIT_REPOSITORY_URL /src && git switch $GIT_BRANCH
fi
