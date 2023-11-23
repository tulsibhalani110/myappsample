pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    docker.build('your-image-name')
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
