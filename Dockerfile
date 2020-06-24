# Container image that runs your code
FROM golang:1.14-alpine3.12
RUN apk add --no-cache bash build-base

# JenkinsAction related labal
LABEL ACTION_ENTRYPOINT="/entrypoint.sh"
LABEL ACTION_ARGS=""

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
