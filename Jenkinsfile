pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    docker build --pull=true -t nick/hello-jenkins:$ https://github.com/tulsibhalani110/myappsample.git .
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
