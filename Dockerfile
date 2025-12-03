FROM eclipse-temurin:21-jdk-jammy AS build
WORKDIR /workspace

COPY gradle/ gradle/
COPY gradlew .
COPY build.gradle settings.gradle ./

RUN ["chmod", "+x", "./gradlew"]

RUN ./gradlew --no-daemon --refresh-dependencies

COPY . .
RUN ./gradlew bootJar -x test --no-daemon

FROM eclipse-temurin:21-jre-jammy
WORKDIR /app

COPY --from=build /workspace/build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
