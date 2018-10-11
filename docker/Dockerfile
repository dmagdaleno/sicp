FROM ubuntu:16.04
MAINTAINER dmagdaleno
RUN mkdir /home/work/ && \
    apt-get update && \
    apt-get install -y --force-yes mit-scheme && \
    apt-get install -y --force-yes vim
VOLUME /home/work/