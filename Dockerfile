FROM maven:3.8.6-openjdk-22 AS build

# Run the Maven build
RUN mvn clean package

FROM openjdk:22
COPY target/java-spring-aws-0.0.1-SNAPSHOT.jar java-spring-aws-0.0.1-SNAPSHOT.jarclear
ENTRYPOINT ["java","-jar","/java-spring-aws-0.0.1-SNAPSHOT.jar"]

