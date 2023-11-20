pipeline {
    agent { label"docker-build-node"}
    stages {
           stage('Checkout Code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/example/repo.git']]])
                script {
                    echo 'Code successfully checked out!'
                }
            }
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
