FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
COPY spring-petclinic-2.0.0.BUILD-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=80" ,"-jar","/app.jar"]
