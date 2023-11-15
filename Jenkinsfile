pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from version control (e.g., Git)
                git 'https://github.com/tulsibhalani110/myappsample.git'
            }
        }

        stage('Build') {
            steps {
                // Use Gradle to build your project
                sh './gradlew build'
            }
        }

        stage('Test') {
            steps {
                // Run tests using Gradle
                sh './gradlew test'
            }
        }

        stage('Deploy') {
            steps {
                // Perform deployment tasks
                // This could involve copying artifacts, updating servers, etc.
            }
        }
    }

    post {
        success {
            // Actions to take when the build is successful
            echo 'Build successful! Deploying...'
        }
        failure {
            // Actions to take when the build fails
            echo 'Build failed! Not deploying.'
        }
    }
}
