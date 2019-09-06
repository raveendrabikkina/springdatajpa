FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY ./target/springdatajpa-*.jar springdatajpa.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springdatajpa.jar"]