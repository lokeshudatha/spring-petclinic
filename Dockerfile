FROM ubuntu:22.04
RUN apt update -y
RUN apt install openjdk-21-jdk -y
WORKDIR /app
ADD https://storage.googleapis.com/udatha-bucket/sonarqube /app/app.jar
EXPOSE 8081
CMD ["java", "-jar", "app.jar"]
