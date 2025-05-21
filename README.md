# Jenkins CI/CD Pipeline with Master-Slave Setup and Docker Deployment

This project demonstrates a complete CI/CD pipeline using Jenkins (master-slave architecture), Maven, GitHub, Docker, and Tomcat for Java-based applications.

---

## CI/CD Overview  
CI (Continuous Integration) and CD (Continuous Delivery/Deployment) ensure fast, automated, and reliable software releases by compiling, testing, packaging, and deploying code seamlessly.

---

## Tools Used  
A list of DevOps tools integrated in this project.

- **Jenkins** – Automation server to orchestrate the CI/CD pipeline.
- **Maven** – Build tool to compile, test, and package the Java code.
- **GitHub** – Source code hosting and version control.
- **Docker** – Containerization tool used for deploying the application on Tomcat.
- **AWS EC2** – Infrastructure for running Jenkins master and slave nodes.

---

## Prerequisites  
Make sure you have the following tools/accounts setup to replicate the project.

- AWS account with two EC2 instances
- Jenkins installed on Master node
- Java 11 and 17 on both Master and Slave
- Maven installed
- Docker installed
- GitHub repository access

---

## EC2 Instance Configuration  
Two EC2 instances are used — one for Jenkins Master, one for Jenkins Slave.

### Required Open Ports:
22, 80, 443, 8080, 8090, 50000

---

## Jenkins Setup on Master  
Install Jenkins, configure Git, Java, and Maven on the master EC2 instance. Access Jenkins on `http://<public-ip>:8080`

---

## Maven Tasks  
Perform the following tasks using Maven:

- `mvn compile` – Compiles the source code.
- `mvn test` – Runs unit tests.
- `mvn package` – Packages the code into a `.war` file.

---

## Jenkins Jobs Configuration  
Three jobs created in Jenkins:

### 1. Compile Job  
Pulls code from GitHub and runs `mvn compile`.

### 2. Test Job  
Runs immediately after Compile job, triggered via “Build after other projects”.

### 3. Package Job  
Packages the code into a `.war` file and serves as the base for Docker deployment.

---

## Jenkins Build Pipeline View  
Install the **Build Pipeline Plugin** to visualize the job flow. Set up a pipeline view linking Compile → Test → Package jobs.

---

## Master-Slave Node Setup  
Master handles job configuration; Slave executes builds. Connect slave using SSH and configure directories and tools.

- Create `/opt/jenkinsdir` on Slave and assign permissions.
- Install Java, Git, and Maven.
- Configure node in Jenkins → Manage Nodes → New Node → Permanent Agent

---

## Docker Deployment via Jenkins  
Extend the **Package Job** to build and deploy a Docker container.

### Dockerfile
```Dockerfile
FROM tomcat:9.0.73-jdk8-corretto-al2
ADD . /usr/local/tomcat/webapps

📞 Contact Information

| **Method** | **Details**                  |
|------------|------------------------------|
| Email      | ahmadtahir4235@gmail.com     |
| Phone      | +92 3000511136               |
| LinkedIn   | https://linkedin.com/in/m-ahmadtahir |
