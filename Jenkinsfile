pipeline {
    agent any

    environment {
        // Set the Docker image name and tag
        DOCKER_IMAGE_NAME = 'ho'
        DOCKER_IMAGE_TAG = 'latest'
    }

    stages {
        stage('Build Docker Image') {
            steps {
                // Check out the source code from your version control system
                checkout scm

                // Build the Docker image using the Dockerfile in the project root
                script {
                    docker.image("${ho}:${latest}").build()
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

         
     
