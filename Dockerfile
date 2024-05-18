FROM openjdk:21-jdk-slim

# Copy Files
WORKDIR /usr/src/app

COPY . .

RUN chmod +x ./mvnw

# Install
RUN ./mvnw -Dmaven.test.skip=true package

# Docker Run Command
EXPOSE 8080
CMD ["java","-jar","/usr/src/app/target/schneli3footwareclassification.jar"]