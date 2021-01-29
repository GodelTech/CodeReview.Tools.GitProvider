FROM alpine

ENV GIT_ACCESS_TOKEN=""
ENV GIT_REPOSITORY_URL=""
ENV GIT_BRANCH="master"
ENV GIT_ASKPASS=/root/git-askpass

VOLUME /src
WORKDIR /src

RUN apk update
RUN apk add git

RUN echo 'echo $GIT_ACCESS_TOKEN' > /root/git-askpass
RUN chmod 777 /root/git-askpass

CMD git clone $GIT_REPOSITORY_URL /src && git switch $GIT_BRANCH