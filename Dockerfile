# Use a lightweight JDK image
FROM openjdk:8-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy your jar file into the container
COPY ServerTime.jar ServerTime.jar

# Expose port (change if your app uses another port)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "ServerTime.jar"]
