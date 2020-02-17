#Базовый образ
FROM openjdk:11-jdk-slim

#Обновляем библиотеки linux, ставим maven, ставим git
RUN apt-get install maven -y; \
    apt-get install git -y; \
    apt-get update

#Устанавливаем в рабочую директорию
WORKDIR /opt

#Клонируем репозиторий с приложением
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

#Устанавливаем рабочую директорию с кодом
WORKDIR boxfuse-sample-java-war-hello

#Создаем war файл(сборка приложения)
RUN mvn package