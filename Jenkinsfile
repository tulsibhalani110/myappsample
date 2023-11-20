pipeline {
    agent 
     {
        docker {
            image 'docker:latest'
        }
    }
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
            // Clean up resources or notify on success
            echo 'Docker build successful!'
        }

        failure {
            // Clean up or notify on failure
            echo 'Docker build failed!'
        }
    }
}
