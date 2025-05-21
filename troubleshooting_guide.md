# 🔧 Troubleshooting Guide

## 1. Jenkins Web Interface Not Loading
- ✅ Check if port `8080` is open in EC2 security group
- ✅ Run: `sudo systemctl status jenkins`
- ✅ Restart Jenkins: `sudo systemctl restart jenkins`

---

## 2. Slave Node Not Connecting
- ✅ Make sure port `50000` is open
- ✅ Ensure slave has Java 11 installed
- ✅ Check connectivity from Master: `ssh ec2-user@<Slave-IP>`

---

## 3. Docker Image Not Building
- ✅ Confirm Docker is installed and running: `docker --version`
- ✅ Check for valid `Dockerfile` path and syntax
- ✅ Ensure WAR file is correctly copied before build

---

## 4. GitHub Repo Not Cloning
- ✅ Confirm public access or credentials if private
- ✅ Test clone manually: `git clone <repo-url>`

---

## 5. Jenkins Jobs Not Triggering Each Other
- ✅ Verify correct upstream/downstream job names
- ✅ Check build triggers are configured
