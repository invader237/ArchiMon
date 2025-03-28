FROM --platform=linux/amd64 openjdk:21-jdk-slim AS build
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

FROM --platform=linux/amd64 openjdk:21-jdk-slim
WORKDIR /app
COPY --from=build /app/target/*.jar backend.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "backend.jar"]