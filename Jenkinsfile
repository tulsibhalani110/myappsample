pipeline {
    agent any
    stages {
        stage('Build Docker') {
            steps{
                script {
                   git 'https://github.com/tulsibhalani110/myappsample.git'
                   sh' docker.build -t pilelinedevops-automation'
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
