FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
RUN apt install mysql-server -y
RUN apt install default-jre default-jdk -y
RUN mkdir /opt/tomcat
WORKDIR opt/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz.asct .
RUN tar -xvzf apache-tomcat-9.0.73.tar.gz.asct
RUN mv apache-tomcat-9.0.73/* /opt/tomcat
EXPOSE 7000
CMD [ "/opt/bin/tomcat/bin/catalina.sh","run" ]
