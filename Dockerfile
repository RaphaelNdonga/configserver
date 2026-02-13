# Start with a base image containing java runtime
FROM eclipse-temurin:25

#Information around who maintains the image
MAINTAINER raphaelndonga.com

#Add the application's jar to the image
COPY target/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

RUN apt-get update \
 && apt-get install -y curl \
 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["java", "-jar", "configserver-0.0.1-SNAPSHOT.jar"]