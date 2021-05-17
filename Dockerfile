FROM amazoncorretto:11-alpine-jdk
ADD target/spring-1.0-SNAPSHOT.jar app.jar
EXPOSE 8082
COPY . .
ENTRYPOINT ["java", "-jar", "app.jar"]