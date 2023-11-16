
        pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub
                git 'https://github.com/your-username/your-repo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    def dockerImage = docker.build('your-docker-image-name:latest', '.')
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                // Push the Docker image to a registry (optional)
                script {
                    docker.withRegistry('https://your-docker-registry', 'docker-registry-credentials-id') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
