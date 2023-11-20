pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    dockerImage = docker.build('your-docker-image-name:latest', '-f Dockerfile .')
                }
            }
        }
    }
    post {
        success {
            // Clean up resources or notify on success
            echo 'Docker build successful!'
        }

        failure {
            // Clean up or notify on failure
            echo 'Docker build failed!'
        }
    }
}
