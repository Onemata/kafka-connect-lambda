FROM confluentinc/cp-kafka-connect:5.3.1

EXPOSE 8083

RUN ls -al

ADD ./target/plugin /usr/local/share/kafka_connect/plugins/
