FROM centos:latest

RUN yum -y update;
RUN yum -y clean all;

RUN yum -y install curl
RUN curl -sL https://rpm.nodesource.com/setup_11.x | bash -
RUN yum -y install nodejs

EXPOSE 8080
COPY src/ /src/
CMD node --experimental-modules ./src/server.mjs