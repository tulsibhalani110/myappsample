
pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    sh 'docker build -t ${ho} .'

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
