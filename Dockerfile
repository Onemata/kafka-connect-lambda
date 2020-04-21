FROM debian:sid-slim

RUN apt-get update -y
RUN apt-get install wget -y
RUN apt-get install gnupg -y
RUN wget -qO - https://packages.confluent.io/deb/3.3/archive.key | apt-key add -
RUN echo 'deb [arch=amd64] https://packages.confluent.io/deb/3.3 stable main' >> /etc/apt/sources.list
#RUN add-apt-repository "deb [arch=amd64] https://packages.confluent.io/deb/3.3 stable main"
RUN apt-get update -y && apt-get install confluent-platform-oss-2.11 -y
RUN apt-get clean

EXPOSE 8083

CMD confluent start


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
