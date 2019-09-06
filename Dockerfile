FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY ./target/springdatajpa-*.jar springdatajpa.jar
ENTRYPOINT ["java","-Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Djava.security.egd=file:/dev/./urandom","-jar","/springdatajpa.jar"]