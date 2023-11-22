
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git 'https://github.com/tulsibhalani110/myappsample.git'
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
