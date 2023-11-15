pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'jdockerimage'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.jdockerimage)
                }
            }
        }
    }

    post {
        success {
            echo 'Docker image built successfully'
        }
    }
}


