FROM amazoncorretto:17
WORKDIR /app
COPY pom.xml .
COPY target/*.jar app.jar 
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
