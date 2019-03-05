FROM maven as builder
COPY src ./src
COPY pom.xml ./
RUN mvn install

FROM azul/zulu-openjdk-alpine:11
VOLUME /tmp
ARG JAR_FILE=target/app.jar
COPY --from=builder ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]
