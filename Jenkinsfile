pipeline {
    agent { label"docker-build-image"}
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    sh 'docker build -t your-image-name:latest .'
                    sh 'docker ps'
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
