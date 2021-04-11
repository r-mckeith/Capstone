pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                docker info
                docker build -t rmckeith/capstone:${BUILD_NUMBER} .
                docker tag rmckeith/capstone:${BUILD_NUMBER} rmckeith/capstone:latest
                docker images
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