# Use OpenJDK 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY target/frontend-web-service-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Cloud Run uses PORT env variable)
ENV PORT=8080
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
