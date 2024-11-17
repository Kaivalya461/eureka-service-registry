FROM amazoncorretto:21-alpine
COPY target/eureka-service-registry-1.0.0.jar app.jar

ENTRYPOINT ["java","-Dspring.profiles.active=gke,prod","-jar","/app.jar"]
