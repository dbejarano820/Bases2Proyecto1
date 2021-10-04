FROM logstash:7.14.1

RUN rm -f ./pipeline/stockmarket.conf && /usr/share/logstash/bin/logstash-plugin install --version=3.1.5 logstash-output-mongodb