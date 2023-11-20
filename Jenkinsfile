pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    sh 'docker ps'
                    sh docker.build('ho:latest', '-f Dockerfile.build .')

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
