#Базовый образ
FROM tomcat:8.5.50

#Обновляем библиотеки linux, ставим maven, ставим git
RUN apt-get update; \
    apt-get install maven -y; \
    apt-get install git -y

#Устанавливаем порт
EXPOSE 8080

#Устанавливаем в рабочую директорию
WORKDIR /opt

#Клонируем репозиторий с приложением
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

#Устанавливаем рабочую директорию с кодом
WORKDIR boxfuse-sample-java-war-hello

#Создаем war файл(сборка приложения)
RUN mvn package

#Сопируем war файл в нужную нам директорию
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps