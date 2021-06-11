#!/bin/sh

if [ -n "$GIT_USE_BASIC_AUTH_SCHEME" ]
then
unset GIT_ASKPASS
git -c http.extraHeader='Authorization: Basic '"$GIT_ACCESS_TOKEN"'' clone $GIT_REPOSITORY_URL /src && git switch $GIT_BRANCH
else
echo 'echo $GIT_ACCESS_TOKEN' > /root/git-askpass && chmod 777 /root/git-askpass
git clone $GIT_REPOSITORY_URL /src && git switch $GIT_BRANCH
fi
