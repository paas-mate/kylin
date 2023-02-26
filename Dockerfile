FROM shoothzj/base:jdk17

WORKDIR /opt

RUN wget -q https://dlcdn.apache.org/kylin/apache-kylin-4.0.3/apache-kylin-4.0.3-bin-spark3.tar.gz  && \
mkdir -p /opt/kylin && \
tar -xf apache-kylin-4.0.3-bin-spark3.tar.gz -C /opt/kylin --strip-components 1 && \
rm -rf apache-kylin-4.0.3-bin-spark3.tar.gz

ENV KYLIN_HOME /opt/kylin

WORKDIR /opt/kylin
