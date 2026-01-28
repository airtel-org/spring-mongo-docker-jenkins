🚀 End-to-End CI/CD Pipeline for Spring Boot Application

Production-style CI/CD implementation using Jenkins, Docker, SonarQube, Nexus, and GitHub Webhooks

✨ Project Highlights

✅ Fully automated CI/CD pipeline
✅ Separate CI & CD servers (real-world setup)
✅ Code quality gates with SonarQube
✅ Artifact management using Nexus
✅ Containerized deployment with Docker & Docker Compose
✅ GitHub Webhook-triggered pipelines

📌 Project Overview

This project demonstrates a real-world DevOps CI/CD pipeline for a Spring Boot application integrated with MongoDB.

The pipeline automates the entire lifecycle:
code commit → build → quality checks → artifact storage → containerization → deployment, following industry best practices.

🏗️ Architecture Overview
Layer	Tool
Source Control	GitHub
CI Server	Jenkins
CD Server	Jenkins
Build Tool	Maven
Code Quality	SonarQube
Artifact Repo	Nexus
Containerization	Docker
Dependency Management	Docker Compose
Image Registry	Docker Hub
Database	MongoDB

CI and CD are hosted on separate servers to simulate a production-grade DevOps environment.

🛠️ Tech Stack

Java (Spring Boot)

MongoDB

Maven

Jenkins (Declarative Pipeline)

SonarQube

Nexus Repository Manager

Docker & Docker Compose

Docker Hub

GitHub

Linux (Ubuntu)

📂 Project Structure
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

🔄 CI/CD Pipeline Flow
🔹 Step 1: Code Push

Developer pushes code to GitHub

GitHub Webhook triggers Jenkins CI pipeline automatically

🔹 Step 2: Continuous Integration (CI Server)

CI pipeline performs:

1️⃣ Checkout source code
2️⃣ Build application using Maven
3️⃣ Run SonarQube code quality analysis
4️⃣ Publish artifacts to Nexus Repository
5️⃣ Build Docker image
6️⃣ Push Docker image to Docker Hub

🔹 Step 3: Continuous Deployment (CD Server)

CD pipeline performs:

1️⃣ Pull Docker image from Docker Hub
2️⃣ Deploy application using Docker Compose
3️⃣ Start Spring Boot & MongoDB containers
4️⃣ Expose application to end users

📜 Jenkins Pipeline

Written using Declarative Pipeline syntax

Pipeline code stored in Jenkinsfile

Automatically triggered using GitHub Webhooks

Secrets managed securely using Jenkins Credentials Manager

🐳 Docker & Docker Compose

Docker is used to create immutable application images

Docker Compose is used to manage multi-container dependencies

Docker Compose Services
Service	Description
app	Spring Boot application (Port 8080)
mongo	MongoDB database with persistent volume
📦 Artifact Management – Nexus

Maven artifacts stored in Nexus

Enables version control and artifact reuse

Acts as a centralized artifact repository

📊 Code Quality – SonarQube

Integrated directly into the CI pipeline

Performs static code analysis

Ensures:

Clean code

Maintainability

Bug & code smell detection

Quality gate validation

💾 Data Persistence

MongoDB uses Docker volumes

Data remains intact even after container restarts

🚀 Application Access

Once deployment is successful:

http://<cd-server-ip>:8080

🔐 Security & Best Practices

No hardcoded credentials

Jenkins Credentials Manager used for:

GitHub

SonarQube

Nexus

Docker Hub

Separate CI & CD environments

Infrastructure aligned with production standards

🎯 DevOps Concepts Demonstrated

✔ End-to-end CI/CD automation
✔ Declarative Jenkins pipelines
✔ Webhook-based triggers
✔ Code quality enforcement
✔ Artifact lifecycle management
✔ Docker image creation & reuse
✔ Docker Compose dependency handling
✔ CI/CD server separation

🔮 Future Enhancements

Kubernetes deployment

Helm charts

Blue-Green / Canary deployments

Monitoring with Prometheus & Grafana

Automated test stages

👤 Author

Nitheesh Kumar Bellamkonda
DevOps Engineer | AWS | Jenkins | Docker | Kubernetes | CI/CD

⭐ If you like this project, consider starring the repository!
