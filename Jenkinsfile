pipeline {
    agent any
    stages {
            stages {
        stage('Docker PS') {
            steps {
                script {
                    // Run docker ps command
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
}
