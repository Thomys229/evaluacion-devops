# Etapa 1: Construcción (Build)
FROM eclipse-temurin:17-jdk-alpine AS builder
WORKDIR /app
COPY demo/pom.xml demo/mvnw ./
COPY demo/.mvn .mvn
COPY demo/src ./src
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

# Etapa 2: Producción (Run)
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]