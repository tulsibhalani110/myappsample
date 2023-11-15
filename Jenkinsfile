pipeline {
    agent any

    stages {
        stage('run backend') {
            steps {
                echo 'execute gradle ...'
                withGradle(){
                    sh './gradlew -v'
                }
                // Add your build commands here
            }
        }
    }
 }
