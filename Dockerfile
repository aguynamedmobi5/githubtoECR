FROM tomcat

MAINTAINER Mobi

RUN apt-get update && apt-get -y upgrade

WORKDIR /usr/local/tomcat

COPY /home/ec2-user/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY /home/ec2-user/context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

EXPOSE 8080

