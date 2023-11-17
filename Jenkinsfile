ppipeline {
    agent any 
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t your-image-name:latest .'
                }
            }
        }
    }
    
    post {
        success {
            echo 'Build successful! You can now deploy your Docker image.'
        }
        failure {
            echo 'Build failed. Check the logs for errors.'
        }
    }
}

