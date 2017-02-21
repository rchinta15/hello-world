FROM centos:centos6
MAINTAINER Rajeev Chinta<rajeev.chinta@gmail.com>

RUN yum update -y && yum install  -y -q curl python build-essential git ca-certificates
RUN mkdir /nodejs && curl http://nodejs.org/dist/v4.4.7/node-v4.4.7-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

COPY . /src

EXPOSE 3000
CMD ["node", "/src/server.js"]

