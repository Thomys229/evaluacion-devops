# Usamos Java 17
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# Copiamos los archivos de tu proyecto
COPY demo/pom.xml demo/mvnw ./
COPY demo/.mvn .mvn
COPY demo/src ./src

# Compilamos la aplicación
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

# Exponemos el puerto y ejecutamos
EXPOSE 8080
CMD ["sh", "-c", "java -jar target/*.jar"]