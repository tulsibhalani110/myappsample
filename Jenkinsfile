pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Use the official Maven image to build your Java application
                    docker.image('ho').inside {
                        // Copy the source code to the working directory inside the Maven container
                        checkout scm

                        // Build the Java application with Maven
                        sh 'Docker clean package'

                        // Build the Docker image using the custom Dockerfile
                        docker.build('ho:latest', '-f Dockerfile.build .')
                    }
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

