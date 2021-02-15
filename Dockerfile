# syntax = docker/dockerfile:1.0-experimental
FROM debian:buster-slim

RUN apt-get update && apt-get install -y git
WORKDIR /root
RUN mkdir -p -m 0600 ~/.ssh

ARG GIT_MY_REPO
RUN --mount=type=secret,id=ssh,dst=/root/.ssh/id_rsa \
  ssh-keyscan -H github.com >> /root/.ssh/known_hosts \
  && git clone ${GIT_MY_REPO}
