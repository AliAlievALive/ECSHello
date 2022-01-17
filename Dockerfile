#FROM maven:3-openjdk-15-slim AS build
#WORKDIR /app/build
#COPY . .
#RUN mvn package -B
#RUN mvn target/monopoly-0.0.1-SNAPSHOT-jar-with-dependencies.jar target/app.jar
#
#FROM openjdk:17-slim
#WORKDIR /app/bin
#COPY --from=build /app/build/target/app.jar .
#CMD ["java", "-jar", "app.jar"]

FROM maven:3-openjdk-11-slim
WORKDIR /app
COPY target/ecshello-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]
EXPOSE 8080