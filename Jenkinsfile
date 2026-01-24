pipeline {
    agent any

    tools {
        maven "maven"
    }

    stages {

        stage('git checkout') {
            steps {
                git 'https://github.com/airtel-org/spring-mongo-docker-jenkins.git'
            }
        }

        stage('compile') {
            steps {
                sh "mvn clean compile"
            }
        }

        stage('test') {
            steps {
                sh "mvn test"
            }
        }

        stage('artifact_gen') {
            steps {
                sh "mvn package"
            }
        }

        stage('SonarQube') {
            steps {
                withSonarQubeEnv('sonar') {
                    sh """
                      mvn sonar:sonar \
                      -Dsonar.projectKey=spring-boot-mongo \
                      -Dsonar.projectName='Spring Boot Mongo Project'
                    """
                }
            }
        }

        stage('nexus deploy') {
            steps {
                sh "mvn clean deploy"
            }
        }

        stage('docker build') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub_cred', url: 'https://index.docker.io/v1/') {
                    sh "docker build -t nithiii/spring-mongo-docker:latest ."
                }
            }
        }

        stage('dockerhub push') {
            steps {
                withDockerRegistry(credentialsId: 'dockerhub_cred', url: 'https://index.docker.io/v1/') {
                    sh "docker push nithiii/spring-mongo-docker:latest"
                }
            }
        }
         stage('Deploy to CD Server') {
     steps {
         sshagent(['cd-ssh']) {
            sh '''
ssh -o StrictHostKeyChecking=no ubuntu@13.126.62.244 << EOF
docker pull kkfunda/mongospring:latest
docker stop myspringcontainer || true
docker rm myspringcontainer || true
docker-compose up -d
EOF
            '''
        }
    }
}


    }
}
