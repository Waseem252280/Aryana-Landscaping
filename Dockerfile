FROM ubuntu:latest
LABEL authors="wasee"

ENTRYPOINT ["top", "-b"]


# Use official Maven image to build the app
FROM maven:3.8.5-openjdk-17 AS build

# Copy the project files to /app
WORKDIR /app
COPY . .

# Build the WAR file
RUN mvn clean package -DskipTests

# Use Tomcat to run WAR (or any Java runtime)
FROM tomcat:9.0-jdk17-openjdk

# Remove default ROOT webapp
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy WAR to webapps as ROOT.war
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
