pipeline {
    agent any 
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker 'images ho'
                    sh 'docker build -t ho:latest .'
                }
            }
        }
    }
}

