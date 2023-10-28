FROM openjdk:17

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем JAR-файл внутрь контейнера
COPY build/libs/dispatcher-1.0-plain.jar dispatcher.jar

# Выбираем порт, который будет доступен извне контейнера
EXPOSE 8080

# Запускаем приложение
CMD java -jar dispatcher.jar
