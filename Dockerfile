FROM debian:10-slim

#EXPOSE 8083



#FROM confluentinc/cp-kafka-connect:latest

#EXPOSE 8083

#RUN sed -i 's/jessie/stretch/g' /etc/apt/sources.list
#RUN apt-get update -y
#RUN apt-get upgrade -y
#RUN apt-get dist-upgrade -y
#RUN dpkg -C
#RUN sed -i 's/jessie/stretch/g' /etc/apt/sources.list
#RUN apt-get -o Acquire::Check-Valid-Until=false update -y
#RUN apt-get update -y
#RUN apt-cache policy libc6
#RUN apt-get install libc6 -y
#RUN apt-get install libxml2 -y
#RUN apt-get autoremove -y
#ADD ./target/plugin /usr/local/share/kafka_connect/plugins/
