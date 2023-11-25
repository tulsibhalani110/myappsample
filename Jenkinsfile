node {
    stage('Build and Deploy Nginx') {
        stage('Build') {
            docker {
                image 'nginx:latest'
                stage('Build') {
                    sh 'pwd'
                    sh 'ls'
                }
            }
        }
        stage('Deploy') {
            docker {
                image 'nginx:latest'
                stage('Deploy') {
                    sh 'pwd'
                    sh 'ls'
                }
            }
        }
    }
}
