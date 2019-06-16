FROM bigtruedata/sbt
WORKDIR /usr/src/app/
ADD . /usr/src/app
EXPOSE 8080
CMD ["sbt", "run"]

