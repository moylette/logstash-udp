FROM docker.elastic.co/logstash/logstash-oss:7.12.0-amd64

RUN bin/logstash-plugin install logstash-input-udp
RUN bin/logstash-plugin install logstash-output-amazon_es
RUN bin/logstash-plugin install logstash-input-kinesis
RUN bin/logstash-plugin install logstash-codec-cloudwatch_logs
