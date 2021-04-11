pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker info"
                sh "docker build -t rmckeith/capstone:${BUILD_NUMBER} ."
                sh "docker tag rmckeith/capstone:${BUILD_NUMBER} rmckeith/capstone:latest"
                sh "docker images"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}