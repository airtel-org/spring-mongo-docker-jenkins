🚀 End-to-End CI/CD Pipeline for Spring Boot Application
📌 Project Overview

This project demonstrates a real-world end-to-end CI/CD pipeline for a Spring Boot application integrated with MongoDB, using industry-standard DevOps tools.

The pipeline automates code build, quality checks, artifact management, containerization, and deployment, following best practices used in production environments.

🏗️ Architecture Summary

Source Code Management: GitHub

CI Server: Jenkins (Build, Quality, Artifact, Image creation)

CD Server: Jenkins (Deployment)

Build Tool: Maven

Code Quality: SonarQube

Artifact Repository: Nexus

Containerization: Docker

Dependency Management: Docker Compose

Image Registry: Docker Hub

Database: MongoDB

Pipeline Type: Jenkins Declarative Pipeline

Trigger Mechanism: GitHub Webhooks

CI and CD are handled on separate servers to simulate a production-like DevOps setup.

🛠️ Tech Stack

Java (Spring Boot)

MongoDB

Maven

Jenkins

SonarQube

Nexus Repository Manager

Docker

Docker Compose

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

🔄 CI/CD Workflow
1️⃣ Source Code Trigger

Code is pushed to GitHub

GitHub Webhook automatically triggers the Jenkins CI pipeline

2️⃣ Continuous Integration (CI Server)

The CI pipeline performs the following steps:

Checkout source code from GitHub

Build application using Maven

Perform code quality analysis using SonarQube

Upload build artifacts to Nexus Repository

Build Docker image using Dockerfile

Push Docker image to Docker Hub

3️⃣ Continuous Deployment (CD Server)

The CD pipeline performs:

Pull Docker image from Docker Hub

Deploy application using Docker Compose

Start application and MongoDB containers

Expose the application to users

📜 Jenkins Pipeline

Written using Declarative Pipeline syntax

Stored as a Jenkinsfile in GitHub

Triggered automatically using GitHub Webhooks

Credentials managed securely using Jenkins Credentials Manager

🐳 Docker & Docker Compose

Docker is used to build the Spring Boot application image

Docker Compose is used to manage application dependencies

Docker Compose Services

app

Spring Boot application

Runs on port 8080

mongo

MongoDB database

Uses Docker volume for persistent storage

📦 Artifact Management (Nexus)

Maven build artifacts are stored in Nexus

Enables artifact versioning and reuse

Acts as a centralized artifact repository for the pipeline

📊 Code Quality (SonarQube)

Integrated into the CI pipeline

Performs static code analysis

Ensures:

Code quality standards

Bug detection

Code smells identification

Maintainability checks

💾 Data Persistence

MongoDB data is stored using Docker volumes

Data remains safe even if containers are restarted or recreated

🚀 How to Access the Application

After successful deployment:

http://<cd-server-ip>:8080

🔐 Security & Best Practices

Jenkins credentials used for:

GitHub

SonarQube

Nexus

Docker Hub

No hardcoded secrets

CI and CD environments are separated

🎯 Key DevOps Concepts Demonstrated

End-to-end CI/CD automation

Declarative Jenkins pipelines

GitHub Webhook integration

Code quality gates

Artifact repository management

Docker image lifecycle

Docker Compose dependency management

Separation of CI and CD servers

🔮 Future Enhancements

Kubernetes deployment

Helm chart integration

Blue-Green / Canary deployments

Monitoring with Prometheus & Grafana

Automated testing stages

👤 Author

Nitheesh Kumar Bellamkonda
DevOps Engineer | AWS | Jenkins | Docker | Kubernetes | CI/CD

⭐ If you find this project useful, feel free to star the repository.
