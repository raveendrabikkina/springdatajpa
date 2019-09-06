FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY ./target/springdatajpa-*.jar springdatajpa.jar
ENTRYPOINT ["java","-Dagentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000","-jar","/springdatajpa.jar"]