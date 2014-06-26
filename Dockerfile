# Pull base image.
FROM ubuntu:12.04
MAINTAINER Adam Kaliński <adamkalinski@gmail.com>

# update apt
RUN apt-get update
RUN apt-get upgrade -y

# Install Python.
RUN apt-get install -y python python-dev python-pip python-virtualenv

# Install MySQL libs
RUN apt-get install -y libmysqlclient-dev

# Unstall build essentials
RUN apt-get install -y build-essential

# Install tools required by drone
RUN apt-get install -y git

# Update python
RUN pip install -U setuptools
RUN pip install -U pip
