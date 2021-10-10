FROM logstash:7.14.1

RUN rm -f ./pipeline/stockmarket.conf && /usr/share/logstash/bin/logstash-plugin install logstash-output-jdbc && /usr/share/logstash/bin/logstash-plugin install --version=3.1.5 logstash-output-mongodb
ADD https://jdbc.postgresql.org/download/postgresql-42.2.5.jar /usr/share/logstash/vendor/jar/jdbc/postgresql-42.2.5.jar
USER root
RUN chown -R logstash /usr/share/logstash/vendor/