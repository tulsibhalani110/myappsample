# Use an official OpenJDK base image
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the application JAR file to the working directory
COPY target/your-application.jar ./

# Expose the port that the application will run on (if needed)
EXPOSE 81

# Define the command to run your Java application

