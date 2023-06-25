FROM maven:3.6.3 as maven
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN mvn package

FROM tomcat:8.5-jre8

WORKDIR /usr/local/tomcat/webapps/

COPY --from=maven /usr/src/app/target/app.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]