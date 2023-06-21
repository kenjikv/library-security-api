FROM tomcat:8.5-jre8

COPY target/app.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]