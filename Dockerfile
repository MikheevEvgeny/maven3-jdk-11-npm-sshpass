FROM maven:3-jdk-11
LABEL maintainer="mikheevevgeny@gmail.com" version="1.0" description="Docker image based on maven:3-jdk-11 with npm, nodejs and sshpass"

RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sshpass nodejs build-essential
RUN apt-get clean all
RUN rm -rf /var/lib/apt/lists/*
