# Creates a container for building debian packages, ideally used with the -v flag to mount local volume in container

FROM debian:latest

MAINTAINER Oliver Leaver-Smith

# Get latest updates

RUN apt-get update
RUN apt-get upgrade -y

# Get dpkg-dev packages

RUN apt-get -y install dpkg-dev debhelper
