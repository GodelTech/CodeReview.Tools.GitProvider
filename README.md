# CodeReview.Tools.GitProvider

Docker Image: https://hub.docker.com/r/godeltech/codereview.tools.gitprovider

## Description

The CodeReview.Tools.GitProvider is a Docker-based tool for cloning and switching Git repositories.

## Usage

### How to build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t codereview.gitprovider .
```

### How to run the Docker Container

To run the Docker container, use the following command:

```bash
docker run -e GIT_REPOSITORY_URL='https://github.com/GodelTech/CodeReview.Tools.GitProvider.git' -e GIT_BRANCH='main' -v ${PWD}:/src codereview.gitprovider
```

## License

This project is licensed under the MIT License. See the LICENSE file for more details.