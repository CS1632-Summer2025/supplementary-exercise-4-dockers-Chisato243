
FROM adoptopenjdk/openjdk11:slim

RUN apt-get update && apt-get install -y --no-install-recommends maven \
 && rm -rf /var/lib/apt/lists/*


WORKDIR /app

COPY pom.xml .
COPY src src

EXPOSE 8080

CMD ["/bin/sh", "-c", "mvn spring-boot:run"]
