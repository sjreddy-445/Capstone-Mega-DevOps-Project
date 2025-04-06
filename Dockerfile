# ----------------------
# Stage 1: Build Stage
# ----------------------
    FROM maven:3.8.3-openjdk-17 AS builder

    LABEL maintainer="Praduman Prajapati praduman.cnd@gmail.com>"
    LABEL app="bankapp"
    
    WORKDIR /app
    
    COPY . .
    
    RUN mvn clean package -DskipTests
    
    # ----------------------
    # Stage 2: Runtime Stage
    # ----------------------
    FROM openjdk:17-alpine AS runtime
    
    WORKDIR /app
    
    COPY --from=builder /app/target/*.jar app.jar
    
    EXPOSE 8080
    
    ENTRYPOINT ["java", "-jar", "app.jar"]
    