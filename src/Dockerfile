FROM alpine

ENV GIT_ACCESS_TOKEN=""
ENV GIT_REPOSITORY_URL=""
ENV GIT_BRANCH="master"
ENV GIT_ASKPASS=/root/git-askpass
ENV GIT_USE_BASIC_AUTH_SCHEME=""

VOLUME /src
WORKDIR /src

ADD ./run.sh /

RUN apk update && apk add git && apk add dos2unix

RUN dos2unix /run.sh

CMD /run.sh