# 🚀 End-to-End CI/CD Pipeline for Spring Boot Application

> Production-style CI/CD implementation using Jenkins, Docker, SonarQube, Nexus, and GitHub Webhooks

---

## ✨ Project Highlights

✅ Fully automated CI/CD pipeline  
✅ Separate CI & CD servers (real-world setup)  
✅ Code quality gates with SonarQube  
✅ Artifact management using Nexus  
✅ Containerized deployment with Docker & Docker Compose  
✅ GitHub Webhook-triggered pipelines  

---

## 📌 Project Overview

This project demonstrates a real-world DevOps CI/CD pipeline for a Spring Boot application integrated with MongoDB.

The pipeline automates the complete lifecycle:

**Code Commit → Build → Quality Checks → Artifact Storage → Containerization → Deployment**

All stages follow industry best practices used in production environments.

---

## 🏗️ Architecture Overview

| Layer | Tool |
|------|------|
| Source Control | GitHub |
| CI Server | Jenkins |
| CD Server | Jenkins |
| Build Tool | Maven |
| Code Quality | SonarQube |
| Artifact Repository | Nexus |
| Containerization | Docker |
| Dependency Management | Docker Compose |
| Image Registry | Docker Hub |
| Database | MongoDB |

> CI and CD are hosted on separate servers to simulate a production-grade DevOps setup.

---

## 🛠️ Tech Stack

- Java (Spring Boot)
- MongoDB
- Maven
- Jenkins (Declarative Pipeline)
- SonarQube
- Nexus Repository Manager
- Docker & Docker Compose
- Docker Hub
- GitHub
- Linux (Ubuntu)

---

## 📂 Project Structure

springboot-ci-cd/
│
├── Jenkinsfile
├── Dockerfile
├── docker-compose.yml
├── pom.xml
├── src/
│   └── main/
│       ├── java/
│       └── resources/
│
└── README.md

---

## 🔄 CI/CD Pipeline Flow

### 🔹 Step 1: Code Push

- Developer pushes code to GitHub
- GitHub Webhook automatically triggers the Jenkins CI pipeline

---

### 🔹 Step 2: Continuous Integration (CI Server)

The CI pipeline performs the following steps:

1. Checkout source code  
2. Build application using Maven  
3. Run SonarQube code quality analysis  
4. Publish artifacts to Nexus Repository  
5. Build Docker image  
6. Push Docker image to Docker Hub  

---

### 🔹 Step 3: Continuous Deployment (CD Server)

The CD pipeline performs:

1. Pull Docker image from Docker Hub  
2. Deploy application using Docker Compose  
3. Start Spring Boot & MongoDB containers  
4. Expose the application to end users  

---

## 📜 Jenkins Pipeline

- Written using Declarative Pipeline syntax
- Pipeline code stored in Jenkinsfile
- Automatically triggered via GitHub Webhooks
- Secrets managed using Jenkins Credentials Manager

---

## 🐳 Docker & Docker Compose

- Docker is used to build immutable Spring Boot application images
- Docker Compose is used to manage multi-container dependencies

### Docker Compose Services

| Service | Description |
|--------|-------------|
| app | Spring Boot application (Port 8080) |
| mongo | MongoDB database with persistent Docker volume |

---

## 📦 Artifact Management – Nexus

- Maven artifacts stored in Nexus Repository
- Enables versioning and reuse
- Acts as a centralized artifact store for the CI pipeline

---

## 📊 Code Quality – SonarQube

- Integrated into the CI pipeline
- Performs static code analysis
- Ensures:
  - Clean & maintainable code
  - Bug detection
  - Code smell identification
  - Quality gate validation

---

## 💾 Data Persistence

- MongoDB uses Docker volumes
- Data remains intact even after container restarts or redeployments

---

## 🚀 Application Access

After successful deployment, access the application at:

http://<cd-server-ip>:8080

---

## 🔐 Security & Best Practices

- No hardcoded secrets
- Jenkins Credentials Manager used for:
  - GitHub
  - SonarQube
  - Nexus
  - Docker Hub
- Separate CI & CD servers
- Production-aligned DevOps practices

---

## 🎯 DevOps Concepts Demonstrated

✔ End-to-end CI/CD automation  
✔ Declarative Jenkins pipelines  
✔ Webhook-based triggers  
✔ Code quality enforcement  
✔ Artifact lifecycle management  
✔ Docker image creation & reuse  
✔ Docker Compose dependency handling  
✔ CI/CD server separation  

---

## 🔮 Future Enhancements

- Kubernetes deployment
- Helm chart integration
- Blue-Green / Canary deployments
- Monitoring with Prometheus & Grafana
- Automated testing stages

---

## 👤 Author

Nitheesh Kumar Bellamkonda  
DevOps Engineer | AWS | Jenkins | Docker | Kubernetes | CI/CD

---

⭐ If you like this project, consider starring the repository!
