pipeline {
    agent any

    stages {
        stage('run backend') {
            steps {
                echo 'execute gradle ...'
                // Add your build commands here
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the project...'
                // Add your deployment commands here
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded! Trigger additional actions if needed.'
        }

        failure {
            echo 'Pipeline failed! Take necessary actions for failure.'
        }
    }
}
