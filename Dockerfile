# DOCKERFILE
FROM maven:3.8.1-openjdk-17-slim

MAINTAINER rgabrielbrand rcgabrielbrand@gmail.com

COPY src ./src
COPY pom.xml ./pom.xml
WORKDIR ./

RUN mvn -f ./pom.xml clean package

COPY target/plateau-mayor-1.0-SNAPSHOT.jar ./target/plateau-mayor-1.0-SNAPSHOT.jar

CMD ["java", "-jar", "./target/plateau-mayor-1.0-SNAPSHOT.jar"]
