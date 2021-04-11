pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "docker info"
                sh "docker build -t rmckeith/capstone:${BUILD_NUMBER} ."
                sh "docker tag rmckeith/capstone:${BUILD_NUMBER} rmckeith/capstone:latest"
                sh "docker build -t rmckeith/postgres:${BUILD_NUMBER} ./db"
                sh "docker tag rmckeith/postgres:${BUILD_NUMBER} rmckeith/postgres:latest"
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