FROM maven:3-openjdk-11-slim AS build
WORKDIR /app
COPY . .
RUN mvn -B package

FROM maven:3-openjdk-11-slim
COPY --from=build /app/target/ecshello-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]