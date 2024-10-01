# Use OpenJDK base image
FROM openjdk:11-jre-slim

# Create an app directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/helloworld-1.0-SNAPSHOT.jar /app/helloworld.jar

# Run the JAR file
CMD ["java", "-jar", "/app/helloworld.jar"]
