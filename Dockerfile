# Use Eclipse Temurin as the base image (replaces the deprecated openjdk image)
FROM eclipse-temurin:17-jdk-jammy

# Set the working directory
WORKDIR /app

# IMPORTANT: Ensure your Hello.class exists!
# If your pipeline uses 'java Hello.java', it doesn't create a .class file.
COPY Hello.java .

# We can compile inside the Docker image to be safe
RUN javac Hello.java

# Command to run the application
CMD ["java", "Hello"]
