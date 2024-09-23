# Use the official OpenJDK image as the base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/miniproject-0.0.1-SNAPSHOT.jar /app/miniproject.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "miniproject.jar"]
