FROM tomcat:9.0.73-jdk8-corretto-al2
COPY *.war /usr/local/tomcat/webapps/
