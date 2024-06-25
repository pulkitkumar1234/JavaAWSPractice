FROM openjdk:22
COPY target/java-spring-aws-0.0.1-SNAPSHOT.jar java-spring-aws-0.0.1-SNAPSHOT.jarclear
ENTRYPOINT ["java","-jar","/java-spring-aws-0.0.1-SNAPSHOT.jar"]