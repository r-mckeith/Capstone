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
                dockerImage = docker.build('rmckeith/capstone')  
                dbDockerImage = docker.build('rmckeith/postgres', './db') 
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