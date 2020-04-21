FROM confluentinc/cp-kafka-connect:5.3.1

EXPOSE 8083

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install libc6 -y
RUN apt-get install libxml2 -y

ADD ./target/plugin /usr/local/share/kafka_connect/plugins/
