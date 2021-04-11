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
                script {
                  dockerImage = docker.build('rmckeith/capstone')  
                }
                script {
                  dbDockerImage = docker.build('rmckeith/postgres', './db') 
                }
                sh "docker images"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                script {
                  docker.withRegistry("", registryCredential) {
                    dockerImage.push()
                    dbDockerImage.push()
                  }
                }
            }
        }
        stage('Cleanup') {
            steps {
                echo 'Cleaning up....'
                sh "docker rmi rmckeith/capstone"
                sh "docker rmi rmckeith/postgres"
            }
        }
    }
}