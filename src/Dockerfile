FROM alpine

ENV GIT_ACCESS_TOKEN=""
ENV GIT_REPOSITORY_URL=""
ENV GIT_BRANCH="master"
ENV GIT_ASKPASS=/root/git-askpass
ENV GIT_USE_BASIC=""

VOLUME /src
WORKDIR /src

ADD ./run.sh /

RUN apk update && apk add git && apk add dos2unix

RUN dos2unix /run.sh
RUN echo 'echo $GIT_ACCESS_TOKEN' > /root/git-askpass && chmod 777 /root/git-askpass

CMD /run.sh