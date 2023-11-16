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
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/tulsibhalani110/myappsample.git', credentialsId: 'your-credentials-id']]])
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
