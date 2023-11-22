
pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                  git 'https://github.com/your-username/your-repository.git'
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
