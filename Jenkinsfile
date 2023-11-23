pipeline {
    agent any
    stages {
        stage('Build Docker') {
            steps{
                script {
                   git 'https://github.com/tulsibhalani110/myappsample.git'
                   sh' dockern build -t pilelinedevops-automation -f /var/lib/jenkins/workspace/pilelinedevops.'
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
