pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                  git credentialsId 'https://github.com/tulsibhalani110/myappsample.git'
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
