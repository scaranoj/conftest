FROM openjdk:8-jdk-alpine
ADD requirements.txt /usr/src/app/
VOLUME /tmp
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
USER root
ENTRYPOINT ["java","-cp","app:app/lib/*","hello.Application"]
