pipeline {
    environment { 
      registryCredential = "dockerhub"
      dockerImage = ""
      dbDockerImage = ""
    }
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker info"
                dockerImage = docker.build -t rmckeith/capstone:${BUILD_NUMBER} .
                sh "docker tag rmckeith/capstone:${BUILD_NUMBER} rmckeith/capstone:latest"
                dbDockerImage = docker.build -t rmckeith/postgres:${BUILD_NUMBER} ./db
                sh "docker tag rmckeith/postgres:${BUILD_NUMBER} rmckeith/postgres:latest"
                sh "docker images"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}