
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/your-username/your-repository.git'
                script {
                    docker.build('your-image-name')
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded!'
        }

        failure {
            echo 'Pipeline failed :('failue')
        }
    }
}
