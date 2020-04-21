FROM confluentinc/cp-kafka-connect:5.3.1

EXPOSE 8083

RUN apt-get update -y
RUN apt-get upgrade

ADD ./target/plugin /usr/local/share/kafka_connect/plugins/
