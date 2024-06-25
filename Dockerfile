# Use an official Maven image to build the application
FROM maven:3.8.5-openjdk-22 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and the source code to the container
COPY pom.xml .
COPY src ./src

# Package the application
RUN mvn clean package

# Use an official OpenJDK image to run the application
FROM openjdk:22-jdk

# Copy the packaged jar from the build stage
COPY --from=build /app/target/java-spring-aws-0.0.1-SNAPSHOT.jar /java-spring-aws-0.0.1-SNAPSHOT.jar

# Set the entry point to run the jar
ENTRYPOINT ["java","-jar","/java-spring-aws-0.0.1-SNAPSHOT.jar"]
