pipeline {
    agent any
    stages {
        stage('Build Docker') {
            steps{
                script {
                   git 'https://github.com/tulsibhalani110/myappsample.git'
                   docker.build('alpine')
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
