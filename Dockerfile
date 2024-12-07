# Use an official OpenTelemetry SDK base image or your own
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled app (from your build step) into the container
COPY target/otel-demo-app.jar /app/otel-demo-app.jar

# Run the app
ENTRYPOINT ["java", "-jar", "/app/otel-demo-app.jar"]
