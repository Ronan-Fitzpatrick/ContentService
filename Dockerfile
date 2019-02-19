FROM openjdk:8u121-jre-alpine
MAINTAINER Automation Rhapsody https://automationrhapsody.com/
 
WORKDIR /var/contentService
 
ADD target/contentService-1.0-SNAPSHOT.jar /var/contentService/contentService.jar
ADD HelloWorld.yml /var/contentService/config.yml
 
EXPOSE 9000 9001
 
ENTRYPOINT ["java", "-jar", "contentService.jar", "server", "config.yml"]