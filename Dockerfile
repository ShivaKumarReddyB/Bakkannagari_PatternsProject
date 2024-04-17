# First stage: Build the application
FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -Pprod -DskipTests

# Second stage: Create the final image
FROM eclipse-temurin:17-alpine
WORKDIR /app
COPY --from=build /app/target/DogsManagementSystem-0.0.1-SNAPSHOT.original.jar DogsManagementSystem.jar
EXPOSE 8080
CMD ["java", "-jar", "DogsManagementSystem.jar"]
