FROM openjdk:8-jdk-alpine
# Environment Variable that defines the endpoint of sentiment-analysis python api.
ENV SA_LOGIC_API_URL http://10.0.0.4:5000
ADD target/user-portal-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "user-portal-0.0.1-SNAPSHOT.jar", "--sa.logic.api.url=${SA_LOGIC_API_URL}"]