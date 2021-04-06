FROM ubuntu:20.04
FROM  tomcat:latest
RUN apt update -y ;\
apt install git -y;\
apt update -y ;\
apt install default-jdk -y ;\
apt update -y ;\
apt install maven -y ;\
apt update -y
WORKDIR /home/user/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git ;\
cd boxfuse-sample-java-war-hello ;\
mvn package ;\
apt remove maven git -y
RUN cp /home/user/boxfuse-sample-java-war-hello/target/hello-1.0.war "$CATALINA_HOME"/webapps/

