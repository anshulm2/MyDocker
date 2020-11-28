FROM ubuntu:16.04

ENV PORT 8080

ARG PORT1:80

RUN apt-get update -y && apt install nginx net-tools -y

COPY log.log /tmp

ADD http://apachemirror.wuchna.com/tomcat/tomcat-10/v10.0.0-M10/bin/apache-tomcat-10.0.0-M10-deployer.tar.gz /home

RUN tar -zxvf /home/apache-tomcat-10.0.0-M10-deployer.tar.gz

ADD apache-tomcat-10.0.0-M10-deployer.tar.gz /tmp

EXPOSE $PORT1

CMD ["echo","abc"]
