#Базовый образ
FROM maven:3.6.3-jdk-11-slim

#Обновляем библиотеки linux, ставим maven, ставим git
RUN apt-get update; \
    apt-get install git -y

#Устанавливаем в рабочую директорию
WORKDIR /opt

#Клонируем репозиторий с приложением
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

#Устанавливаем рабочую директорию с кодом
WORKDIR boxfuse-sample-java-war-hello

#Создаем war файл(сборка приложения)
RUN mvn package