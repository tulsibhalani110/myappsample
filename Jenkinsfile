pipeline {
    agent any 
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerBuildLogs = sh(script: 'docker build -t your-image-name:latest .', returnStdout: true).trim()
                    docker 'images ho'
                    sh 'docker build -t ho:latest .'
                }
            }
        }
    }
}

