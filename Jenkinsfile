pipeline {
    agent any
    tools{
       Docker' 24.0.6, build ed223bc' 
    }
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                   git 'https://github.com/tulsibhalani110/myappsample.git'
                    docker.build -t ('your-image-name')
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
