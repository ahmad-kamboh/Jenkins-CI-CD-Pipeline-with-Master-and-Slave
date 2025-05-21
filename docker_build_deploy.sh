#!/bin/bash

# Move WAR to directory
mkdir -p ~/warfile
cp ~/jenkins/workspace/3.Package/target/*.war ~/warfile/

# Create Dockerfile
cat <<EOF > ~/warfile/Dockerfile
FROM tomcat:9.0.73-jdk8-corretto-al2
COPY *.war /usr/local/tomcat/webapps/
EOF

# Build Docker Image
cd ~/warfile
docker build -t myapp-image:1.0 .

# Run Container
docker run -d -p 8090:8080 --name myapp-container myapp-image:1.0
