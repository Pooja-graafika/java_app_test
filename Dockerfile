FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY ./target/Uber.jar .
CMD ["java", "-jar", "Uber.jar"]
