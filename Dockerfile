FROM ubuntu:16.04

ENV PORT 80

ARG PORT1:80

RUN apt-get update -y && apt install nginx net-tools -y

COPY log.log /tmp

ADD http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.tar.gz /home

RUN tar -zxvf /home/apache-tomcat-8.5.50.tar.gz

ADD apache-tomcat-8.5.50.tar.gz /tmp

EXPOSE $PORT1

#ENTRYPOINT ["/bin/bash","date"]
