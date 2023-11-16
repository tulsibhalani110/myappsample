pipeline {
    agent any

    environment {
        // Set the Docker image name and tag
        DOCKER_IMAGE_NAME = 'your-image-name'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from your version control system
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                // Use the Docker plugin to build the Docker image
                script {
                    docker.build("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                // Use the Docker plugin to push the Docker image to a registry
                script {
                    docker.withRegistry('https://your-docker-registry', 'your-registry-credentials-id') {
                        docker.image("${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_TAG}").push()
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Build successful! You can now deploy your Docker image.'
        }
        failure {
            echo 'Build failed. Check the logs for errors.'
        }
    }
}



