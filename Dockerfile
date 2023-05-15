FROM alpine:latest AS build

RUN apk update
RUN apk add openjdk17

COPY . .
RUN chmod +x ./gradlew
RUN ./gradlew bootJar --no-daemon


FROM openjdk:17-alpine
EXPOSE 8080
COPY --from=build ./build/libs/microServicioRender-0.0.1-SNAPSHOT.jar ./microServicioRender-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","microServicioRender-0.0.1-SNAPSHOT.jar"]