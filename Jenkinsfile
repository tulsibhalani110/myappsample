pipeline {
    agent { lable"docker-build-node"}
    stages {
        stage('Build Docker Image') {
            steps{
                script {
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
