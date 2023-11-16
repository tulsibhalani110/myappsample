pipeline {
    agent any
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    def dockerImage = docker.build('imaged:latest', '.')
                }
            }
        }
}
