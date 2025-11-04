

# Build stage
# Uses Maven 3.9.9 combined with Eclipse Temurin JDK 21
FROM maven:3.9.9-eclipse-temurin-21 AS build
WORKDIR /app
COPY . .
# Note: Ensure your pom.xml is also configured for target Java 21
RUN mvn clean package -DskipTests

# Package stage
# Uses a minimal Eclipse Temurin JDK 21 image based on Alpine Linux
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /app
# Copy the built JAR from the 'build' stage
COPY --from=build /app/target/facebookapi-0.0.1-SNAPSHOT.jar.original app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
