FROM adoptopenjdk:8-jdk-hotspot

WORKDIR /app

COPY build/libs/*.jar app.jar

EXPOSE 9080

ENTRYPOINT ["java", "-jar", "app.jar"]
