# Stage 1: Build
FROM maven:3.8.5-openjdk-8-slim AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM eclipse-temurin:8-jre-alpine
WORKDIR /opt/app
COPY --from=build /app/target/*jar spring-boot-mongo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "spring-boot-mongo.jar"]
