FROM node:14-stretch-slim

RUN apt-get -qq update && apt-get -qqy install curl unzip git

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip

RUN ./aws/install
