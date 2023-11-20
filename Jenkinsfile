pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    dockerImage = docker.build('mo', '-f Dockerfile .')
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
