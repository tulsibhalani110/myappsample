pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                 docker ps
                }
            }
        }
    }
    post {
        success {
            echo 'Docker build successful!'
        }

        failure {
            echo 'Docker build failed!'
        }
    }
}
