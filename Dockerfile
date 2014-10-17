FROM jboss/base-jdk:7
MAINTAINER Bruno Oliveira <bruno@abstractj.org>

ENV NODYN_VERSION 0.1.1-20141016.211140-229

RUN curl -L https://oss.sonatype.org/content/repositories/snapshots/io/nodyn/nodyn/0.1.1-SNAPSHOT/nodyn-$NODYN_VERSION-bin.zip | bsdtar -xf - && chmod +x nodyn

# Set the default command to run on boot
CMD ["/opt/jboss/nodyn"]


