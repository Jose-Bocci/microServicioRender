FROM alpine:latest AS build
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-alpine
EXPOSE 8080
COPY ./build/libs/microServicioRender-0.0.1-SNAPSHOT.jar ./microServicioRender-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","microServicioRender-0.0.1-SNAPSHOT.jar"]