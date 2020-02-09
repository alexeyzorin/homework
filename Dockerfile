#Базовый образ
FROM tomcat:8.5.50

#Обновляем библиотеки linux
RUN apt-get update

#Ставим maven
RUN apt-get install maven -y

#Устанавливаем GIT
RUN apt-get install git -y

#Устанавливаем порт
EXPOSE 8080

#Переходим в рабочую директорию
WORKDIR /opt

#Клонируем репозиторий с приложением
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

#Переходим в рабочую директорию с кодом
WORKDIR boxfuse-sample-java-war-hello

#Создаем war файл(сборка приложения)
RUN mvn package

#Сопируем war файл в нужную нам директорию
RUN cp target/hello-1.0.war /usr/local/tomcat/webapps