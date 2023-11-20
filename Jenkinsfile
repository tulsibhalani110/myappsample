pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    docker 'images ho'
                    sh 'docker build -t ho:latest .'
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
