FROM alpine:latest
COPY target/app.jar /app/springboot.jar
RUN apk --update add openjdk17-jre
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar". "/app/springboot.jar"]