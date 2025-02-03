# Use a base image with Java installed
FROM openjdk:8-jre-alpine

# Expose the port your app runs on
EXPOSE 8080

# Copy the JAR file into the container
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/java-app-1.0-SNAPSHOT.jar

# Set the working directory
WORKDIR /usr/app

# Command to run the application
ENTRYPOINT ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
