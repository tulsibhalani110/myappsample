pipeline {
    agent { label"docker-build-node"}
    stages {
           stage('SCM Checkout ') {
            steps
               git 'https://github.com/tulsibhalani110/myappsample.git'       
           }
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
