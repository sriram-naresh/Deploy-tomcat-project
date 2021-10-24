FROM tomcat:8-jre11
LABEL "Project"="deploy-tomcat-project"
LABEL "Author"="Sriram"

RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/webapp.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8090
CMD ["catalina.sh", "run"]
WORKDIR /usr/local/tomcat/
