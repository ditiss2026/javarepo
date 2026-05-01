# Use a lightweight JDK image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled .class file from the Jenkins workspace to the container
COPY Hello.class .

# Command to run the application
CMD ["java", "Hello"]

