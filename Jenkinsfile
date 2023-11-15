pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'meet'
        REGISTRY_CREDENTIALS = 'global'
        SHOULD_DEPLOY = true
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.meet)
                }
            }
        }

        stage('Push Docker Image') {
            when {
                expression { env.SHOULD_DEPLOY == true }
            }
            steps {
                script {
                    docker.withRegistry('https://your-docker-registry', env.REGISTRY_CREDENTIALS) {
                        docker.image(env.meet).push()
                    }
                }
            }
        }

        stage('Deploy') {
            when {
                expression { env.SHOULD_DEPLOY == true }
            }
            steps {
                // Add deployment steps here
                // For example, deploying to a Kubernetes cluster, etc.
            }
        }
    }

    post {
        always {
            // Clean up (e.g., remove Docker containers, images, etc.)
            script {
                docker.image(env.meet)
            }
        }
    }
}

