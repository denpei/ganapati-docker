FROM ubuntu
MAINTAINER Dennis Peitersen

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN git clone https://github.com/denpei/ganapati-api.git
RUN cd ganapati-api

RUN ./mvnw spring-boot:run

EXPOSE 8080
