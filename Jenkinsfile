pipeline {
    agent {
        docker {
            image 'https://github.com/tulsibhalani110/myappsample.git'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B'
            }
        }
    }
}
