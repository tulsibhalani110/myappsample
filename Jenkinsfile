pipeline {
    agent any
    environment {
        DOCKER_IMAGE_NAME = 'ho:latest'
    }
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t ${ho}  .'
                }
            }
        }
    }
}

