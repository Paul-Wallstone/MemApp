FROM openjdk:17

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем исходники проекта внутрь контейнера
COPY . .

# Устанавливаем разрешения на скрипт gradlew
RUN chmod +x ./gradlew

# Собираем проект внутри контейнера
RUN ./gradlew build

# Копируем JAR-файл внутрь контейнера
COPY dispatcher/build/libs/dispatcher.jar dispatcher.jar

# Выбираем порт, который будет доступен извне контейнера
EXPOSE 8080

# Запускаем приложение
CMD java -jar dispatcher.jar
