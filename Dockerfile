#FROM maven:3-openjdk-11-slim
#WORKDIR /app/build
#COPY . .
#RUN mvn package -B
#COPY target/ecshello-0.0.1-SNAPSHOT.jar target/app.jar
#WORKDIR /app/bin
#COPY --from=build /app/build/target/app.jar .
#CMD ["java", "-jar", "app.jar"]

FROM maven:3-openjdk-11-slim
WORKDIR /app
COPY target/ecshello-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]
EXPOSE 8080
