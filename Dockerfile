FROM mareimorsy/light-base
# Specify SBT version
ENV SBT_VERSION 1.1.0

# install sbt
RUN \
 curl -L -o sbt-$SBT_VERSION.deb http://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
 dpkg -i sbt-$SBT_VERSION.deb && \
 rm sbt-$SBT_VERSION.deb && \
 apt-get update && \
 apt-get install sbt && \
 sbt sbtVersion

WORKDIR /usr/src/app/
ADD . /usr/src/app
EXPOSE 8080
CMD ["sbt", "run"]

