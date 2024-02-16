# FROM maven:3.8.5-openjdk-17

# WORKDIR /spring-boot-smart-restaurant
# COPY . .
# RUN mvn clean install

# CMD mvn spring-boot:run

# FROM maven:3.8.5-openjdk-17
# VOLUME /tmp
# EXPOSE 8080
# COPY target/spring-boot-smart-restaurant-0.0.1-SNAPSHOT.jar springbootsmartrestaurant.jar
# ENTRYPOINT ["java","-jar","/springbootsmartrestaurant.jar"]



# FROM maven:3.8.5-openjdk-17
# ARG JAR_FILE=target/*.jar
# COPY ${JAR_FILE} application.jar
# CMD apt-get update -y
# ENTRYPOINT ["java", "-Xmx2048M", "-jar", "/application.jar"]


FROM maven:3.8.5-openjdk-17

WORKDIR /spring-boot-smart-restaurant
COPY . .
RUN mvn clean install

CMD mvn spring-boot:run