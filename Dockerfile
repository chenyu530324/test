FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD build/libs/test.jar  app.jar
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
