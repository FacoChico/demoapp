# Базовый образ с Java 21 из проекта Eclipse Temurin под Ubuntu Jammy
FROM eclipse-temurin:21-jre-jammy

# Установка рабочей директории
WORKDIR /app

# Копирование fat-jar из папки билда в рабочую директорию внутри контейнера
COPY build/libs/demo-app-0.0.1-SNAPSHOT.jar app.jar

# Порт для взаимодействия с приложением
EXPOSE 8080

# Запуск приложения в контейнере
CMD ["java", "-jar", "/app/app.jar"]
